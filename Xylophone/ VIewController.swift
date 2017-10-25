//
//  ViewController.swift
//  Xylophone
//
//  Created by Kobsonauta on 25.10.2017.
//  Copyright © 2017 Kobsonauta. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
    
  

}

