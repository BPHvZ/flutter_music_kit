//
//  MusicKitPluginResourceRequest.swift
//  music_kit
//
//  Created by Bart van Zeist on 15/03/2023.
//

import Foundation
import MusicKit
import MediaPlayer

let kErrorResourceRequest = "ERR_RESOURCE_REQUEST"

extension SwiftMusicKitPlugin {
    func searchSongByISRC(_ songISRC: String, _ fallbackSearchTerm: String, result: @escaping FlutterResult) {
        Task {
            do {
                NSLog("Search for ISRC: \(songISRC)")
                let encoder = JSONEncoder()
                let decoder = JSONDecoder()
                encoder.dateEncodingStrategy = .iso8601
                
                let songRequest = MusicCatalogResourceRequest<Song>(matching: \.isrc, equalTo: songISRC)
                let songResponse = try await songRequest.response()
                if let firstSong = songResponse.items.filter({ song in
                    NSLog("result: \(song)")
                    NSLog("result: \(song.playParameters)")
                    return song.playParameters != nil
                }).first {
                    do {
                        let data = try encoder.encode(firstSong)
                        let jsonString = String(data: data, encoding: .utf8)
                        return result(jsonString)
                    } catch {
                        return result(nil)
                    }
                }
                
                var searchRequest = MusicCatalogSearchRequest(term: fallbackSearchTerm, types: [Song.self])
                searchRequest.limit = 10
                let searchResponse = try await searchRequest.response()
                if let firstSong = searchResponse.songs.filter({ song in
                    NSLog("result: \(song)")
                    NSLog("result: \(song.playParameters)")
                    return song.playParameters != nil
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
