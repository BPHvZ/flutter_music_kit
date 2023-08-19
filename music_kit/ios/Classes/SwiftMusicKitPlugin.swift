import Flutter
import MediaPlayer
import UIKit
import MusicKit
import Combine

public class SwiftMusicKitPlugin: NSObject, FlutterPlugin {
    internal var musicPlayer: ApplicationMusicPlayer = ApplicationMusicPlayer.shared
    internal var playerController: MPMusicPlayerController = MPMusicPlayerController.applicationMusicPlayer
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "plugins.misi.app/music_kit", binaryMessenger: registrar.messenger())
        let instance = SwiftMusicKitPlugin()
        instance.musicPlayer.queue = .init()
        
        registrar.addMethodCallDelegate(instance, channel: channel)
        
        let musicSubcriptionEventChannel = FlutterEventChannel(name: "plugins.misi.app/music_kit/music_subscription", binaryMessenger: registrar.messenger())
        musicSubcriptionEventChannel.setStreamHandler(MusicSubscriptionStreamHandler())
        
        let musicPlayerStateEventChannel = FlutterEventChannel(name: "plugins.misi.app/music_kit/player_state", binaryMessenger: registrar.messenger())
        musicPlayerStateEventChannel.setStreamHandler(MusicPlayerStreamHandler(musicPlayer: instance.musicPlayer))
        
        let musicPlayerQueueEventChannel = FlutterEventChannel(name: "plugins.misi.app/music_kit/player_queue", binaryMessenger: registrar.messenger())
        musicPlayerQueueEventChannel.setStreamHandler(MusicPlayerQueueStreamHandler(musicPlayer: instance.musicPlayer))
        
        let playerControllerEventChannel = FlutterEventChannel(name: "plugins.misi.app/music_kit/player_controller", binaryMessenger: registrar.messenger())
        playerControllerEventChannel.setStreamHandler(MPPlaybackStateHandler(playerController: instance.playerController))
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let methodKey = MethodKeys(rawValue: call.method) else {
            result(FlutterMethodNotImplemented)
            return
        }
        
        switch methodKey {
        case .authorizationStatus:
            authorizationStatus(result)
            
        case .requestAuthorizationStatus:
            requestAuthorizationStatus(result)
            
        case .requestDeveloperToken:
            developerToken(result)
            
        case .requestUserToken:
            fetchUserToken(developerToken: call.arguments as! String, result: result)
            
        case .currentCountryCode:
            currentCountryCode(result)
            
        case .isPreparedToPlay:
            isPreparedToPlay(result)
            
        case .playbackTime:
            playbackTime(result)
            
        case .musicPlayerState:
            musicPlayerState(result)
            
        case .pause:
            pause(result)
            
        case .play:
            play(result)
            
        case .prepareToPlay:
            prepareToPlay(result)
            
        case .restartCurrentEntry:
            restartCurrentEntry(result)
            
        case .skipToNextEntry:
            skipToNextEntry(result)
            
        case .skipToPreviousEntry:
            skipToPreviousEntry(result)
            
        case .stop:
            stop(result)
            
        case .setQueue:
            let arguments = call.arguments as! JSONObject
            setQueue(
                itemType: arguments["type"] as! String,
                itemObject: arguments["item"] as! ResourceObject,
                result: result
            )
            
        case .setQueueWithItems:
            let arguments = call.arguments as! JSONObject
            setQueue(
                itemType: arguments["type"] as! String,
                itemObjects: arguments["items"] as! Array<ResourceObject>,
                startingAt: arguments["startingAt"] as? Int,
                result: result
            )
            
        case .getQueue:
            getQueue(result: result)
        
        case .removeItemWithId:
            let arguments = call.arguments as! JSONObject
            let musicIDString = arguments["musicItemID"] as! String
            let musicID = MusicItemID(musicIDString)
            removeItemWithId(musicID, result: result)
            
        case .repeatMode:
            repeatMode(result)
            
        case .setRepeatMode:
            setRepeatMode(call.arguments as! Int, result: result)
            
        case .toggleRepeatMode:
            toggleRepeatMode(result)
            
        case .shuffleMode:
            shuffleMode(result)
            
        case .setShuffleMode:
            setShuffleMode(call.arguments as! Int, result: result)
            
        case .toggleShuffleMode:
            toggleShuffleMode(result)
            
        case .searchSongByISRC:
            let arguments = call.arguments as! JSONObject
            let isrc = arguments["isrc"] as! String
            let fallbackSearchTerm = arguments["fallbackSearchTerm"] as! String
            searchSongByISRC(isrc, fallbackSearchTerm, result: result)
        }
    }
}

extension SwiftMusicKitPlugin {
    class MusicKitPluginStreamHandler: NSObject {
        var eventSink: FlutterEventSink? = nil
    }
}

extension FlutterError {
    public convenience init(code: String, message: String?) {
        self.init(code: code, message: message, details: nil)
    }
}
