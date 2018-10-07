//
//  ViewController.swift
//  Music Player
//
//  Created by Amber Akhtar on 9/2/18.
//  Copyright © 2018 Amber Akhtar. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer ()

    @IBAction func Play(_ sender: Any)
    {
          player.play()
    }
    
    @IBAction func Pause(_ sender: Any)
    {
          player.pause()
    }
    
    @IBAction func Replay(_ sender: Any)
    {
          player.currentTime = 0
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer (contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        
        }
        
        catch
        {
            //ERROR
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

