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
    func searchSongByISRC(_ songISRC: String, result: @escaping FlutterResult) {
      Task {
          do {
              let songRequest = MusicCatalogResourceRequest<Song>(matching: \.isrc, equalTo: songISRC)
              let songResponse = try await songRequest.response()
              if let firstSong = songResponse.items.first {
                  do {
                    let encoder = JSONEncoder()
                    encoder.dateEncodingStrategy = .iso8601
                    let data = try encoder.encode(firstSong)
                    let jsonString = String(data: data, encoding: .utf8)
//                    let jsonObject = try JSONSerialization.jsonObject(with: data)
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
