//
//  MusicKitApplicationPlayer.swift
//  music_kit
//
//  Created by Xavier Lyu on 2022/5/27.
//

import Foundation
import MusicKit
import MediaPlayer

typealias ResourceObject = JSONObject

extension SwiftMusicKitPlugin {
    
    func setQueue<S: Sequence, PlayableMusicItemType: PlayableMusicItem>(
        for playableItems: S,
        startingAt startPlayableItem: S.Element? = nil
    ) where S.Element == PlayableMusicItemType {
        let encoder = JSONEncoder()
        let decoder = JSONDecoder()
        
        var playParameters: [MPMusicPlayerPlayParameters] = []
        
        playableItems.forEach { item in
            guard let data = try? encoder.encode(item.playParameters) else { return }
            guard let params = try? decoder.decode(MPMusicPlayerPlayParameters.self, from: data) else { return }
                    playParameters.append(params)
        }
        
        let queue = MPMusicPlayerPlayParametersQueueDescriptor(playParametersQueue: playParameters)
        let player = MPMusicPlayerController.applicationMusicPlayer
        player.setQueue(with: queue)
        
//        ApplicationMusicPlayer.shared.queue = ApplicationMusicPlayer.Queue(for: playableItems, startingAt: startPlayableItem)
    }
    
    func setQueue(itemType: String, itemObject: ResourceObject, result: @escaping FlutterResult) {
        setQueue(itemType: itemType, itemObjects: [itemObject], result: result)
    }
    
    func setQueue(itemType: String, itemObjects: Array<ResourceObject>, startingAt: Int? = nil, result: @escaping FlutterResult) {
        Task {
            do {
                let itemType = MusicItemType(itemType)
                
                switch itemType {
                case .album:
                    let albums: Array<Album> = try decoded(json: itemObjects)
                    setQueue(for: albums, startingAt: startingAt != nil ? albums[startingAt!] : nil)
                    
                case .playlist:
                    let playlists: Array<Playlist> = try decoded(json: itemObjects)
                    setQueue(for: playlists, startingAt: startingAt != nil ? playlists[startingAt!] : nil)
                    
                case .song, .musicVideo, .track:
                    let tracks: Array<Track> = try decoded(json: itemObjects)
                    setQueue(for: tracks, startingAt: startingAt != nil ? tracks[startingAt!] : nil)
                    
                case .station:
                    let stations: Array<Station> = try decoded(json: itemObjects)
                    setQueue(for: stations, startingAt: startingAt != nil ? stations[startingAt!] : nil)
                    
                default:
                    break
                }
                result(nil)
            } catch {
                result(FlutterError(code: kErrorPlay, message: error.localizedDescription))
            }
        }
    }
    
//    func insertAtIndex<PlayableMusicItemType: PlayableMusicItem>(_ element: PlayableMusicItemType, atIndex: Int) {
//        if (musicPlayer.queue.entries.count == 0) {
//            setQueue(for: [element])
//        } else {
//            musicPlayer.queue.entries.insert(MusicPlayer.Queue.Entry(element), at: atIndex)
//            let newQueue = musicPlayer.queue
//            ApplicationMusicPlayer.shared.queue = newQueue
//        }
//    }
    
    func removeItemWithId(_ itemId: MusicItemID, result: @escaping FlutterResult) {
        if let index = musicPlayer.queue.entries.firstIndex(where: { $0.item?.id == itemId }) {
            musicPlayer.queue.entries.remove(at: index)
        }
        result(nil)
    }
    
    func repeatMode(_ result: @escaping FlutterResult) {
        result((musicPlayer.state.repeatMode ?? MusicPlayer.RepeatMode.none).intValue)
    }
    
    func setRepeatMode(_ mode: Int, result: @escaping FlutterResult) {
        musicPlayer.state.repeatMode = MusicPlayer.RepeatMode(mode)
        result(nil)
    }
    
    func toggleRepeatMode(_ result: @escaping FlutterResult) {
        let nextRepeatMode = (musicPlayer.repeatMode.intValue + 2) % 3
        musicPlayer.state.repeatMode = MusicPlayer.RepeatMode(nextRepeatMode)
        result(nextRepeatMode)
    }
    
    func shuffleMode(_ result: @escaping FlutterResult) {
        result((musicPlayer.state.shuffleMode ?? MusicPlayer.ShuffleMode.off).intValue)
    }
    
    func setShuffleMode(_ mode: Int, result: @escaping FlutterResult) {
        musicPlayer.state.shuffleMode = MusicPlayer.ShuffleMode(mode)
        result(nil)
    }
    
    func toggleShuffleMode(_ result: @escaping FlutterResult) {
        let nextShuffleMode = musicPlayer.shuffleMode == MusicPlayer.ShuffleMode.off ? MusicPlayer.ShuffleMode.songs : MusicPlayer.ShuffleMode.off
        musicPlayer.state.shuffleMode = nextShuffleMode
        result(nextShuffleMode.intValue)
    }
}

fileprivate func parseMusicItem(_ itemType: String, from itemObject: ResourceObject) throws -> MusicItem? {
    let itemType = MusicItemType(itemType)
    
    switch itemType {
    case .album:
        let album: Album = try decoded(json: itemObject)
        return album
    case .playlist:
        let playlist: Playlist = try decoded(json: itemObject)
        return playlist
    case .song:
        let song: Song = try decoded(json: itemObject)
        return song
    case .station:
        let station: Station = try decoded(json: itemObject)
        return station
    case .musicVideo:
        let mv: MusicVideo = try decoded(json: itemObject)
        return mv
    default:
        return nil
    }
}

extension ApplicationMusicPlayer {
    var repeatMode: RepeatMode {
        return state.repeatMode ?? RepeatMode.none
    }
    
    var shuffleMode: ShuffleMode {
        return state.shuffleMode ?? ShuffleMode.off
    }
}
