//
//  MPPlaybackStateHandler.swift
//  music_kit
//
//  Created by Bart van Zeist on 18/08/2023.
//

import Foundation
import MediaPlayer

struct PlayerControllerState: JSONEncodable {
    let currentPlaybackTime: TimeInterval
    let playbackStatus: Int
    
    enum CodingKeys: String, CodingKey {
        case currentPlaybackTime
        case playbackStatus
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(currentPlaybackTime, forKey: .currentPlaybackTime)
        try container.encode(playbackStatus, forKey: .playbackStatus)
    }
}

extension SwiftMusicKitPlugin {
    class MPPlaybackStateHandler: MusicKitPluginStreamHandler, FlutterStreamHandler {
        private var playerController: MPMusicPlayerController
        
        init(playerController: MPMusicPlayerController) {
            self.playerController = playerController
            super.init()
        }
        
        func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
            eventSink = events
            
            sendNowPlayingStateEvent()
            playerController.beginGeneratingPlaybackNotifications()
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(onNowPlayingItemDidChange),
                name: NSNotification.Name.MPMusicPlayerControllerPlaybackStateDidChange,
                object: playerController)
            
            return nil
        }
        
        @objc private func onNowPlayingItemDidChange(notification: NSNotification) {
            sendNowPlayingStateEvent()
        }
        
        private func sendNowPlayingStateEvent() {
            guard let eventSink = eventSink else {
                return
            }
            
            eventSink(PlayerControllerState(
                currentPlaybackTime: playerController.currentPlaybackTime,
                playbackStatus: playerController.playbackState.rawValue
            ).jsonObject())
        }
        
        func onCancel(withArguments arguments: Any?) -> FlutterError? {
            playerController.endGeneratingPlaybackNotifications()
            NotificationCenter.default.removeObserver(self)
            eventSink = nil
            return nil
        }
    }
}
