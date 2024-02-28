//
//  AudioPlayer.swift
//  Restart
//
//  Created by Goncalves Higino on 28/02/24.
//

import Foundation
import AVFoundation


var audioPlayer: AVAudioPlayer?


func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
          audioPlayer =  try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
          audioPlayer?.play()
        } catch {
            print("Cold not play the sound file")
        }
    }
}
