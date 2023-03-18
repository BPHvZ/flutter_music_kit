//
//  MusicKitPluginResourceRequest.swift
//  music_kit
//
//  Created by Bart van Zeist on 15/03/2023.
//

import Foundation
import MusicKit

let kErrorResourceRequest = "ERR_RESOURCE_REQUEST"

extension SwiftMusicKitPlugin {
    // Currently, there are issues with encoding and decoding.
    // Specifically: the opaque PlayParameters seems to lose some properties which makes it impossible to play
    // Hence, we immediately add the song to the queue
    func searchAndSetSongByISRC(_ songISRC: String, result: @escaping FlutterResult) {
        Task {
            do {
                let songRequest = MusicCatalogResourceRequest<Song>(matching: \.isrc, equalTo: songISRC)
                let songResponse = try await songRequest.response()
                if let firstSong = songResponse.items.filter({ $0.playParameters != nil}).first {
                    do {
                        setQueue(for: [firstSong])
                        let encoder = JSONEncoder()
                        encoder.dateEncodingStrategy = .iso8601
                        let data = try encoder.encode(firstSong)
                        let jsonString = String(data: data, encoding: .utf8)
                        return result(jsonString)
                    } catch {
                        return result(nil)
                    }
                }
                result(nil)
            } catch {
                result(FlutterError(code: kErrorResourceRequest, message: error.localizedDescription))
            }
        }
    }
}
