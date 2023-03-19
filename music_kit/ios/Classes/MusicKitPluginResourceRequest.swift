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
    struct CustomPlayParams: Codable {
        let catalogID, id, kind, musicKitDatabaseID: String?
        let musicKitPersistentID: String?

        enum CodingKeys: String, CodingKey {
            case catalogID = "catalogId"
            case id, kind
            case musicKitDatabaseID = "musicKit_databaseID"
            case musicKitPersistentID = "musicKit_persistentID"
        }
    }
    
    func searchSongByISRC(_ songISRC: String, result: @escaping FlutterResult) {
        Task {
            do {
                let encoder = JSONEncoder()
                let decoder = JSONDecoder()
                encoder.dateEncodingStrategy = .iso8601
                let songRequest = MusicCatalogResourceRequest<Song>(matching: \.isrc, equalTo: songISRC)
                let songResponse = try await songRequest.response()
                if let firstSong = songResponse.items.filter({ song in
                    if song.playParameters != nil {
                        guard let data = try? encoder.encode(song.playParameters) else { return false }
                        let playParams = try? decoder.decode(CustomPlayParams.self, from: data)
                        return playParams?.musicKitDatabaseID != nil || playParams?.musicKitPersistentID != nil
                    }
                    return false
                }).first {
                    do {
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
