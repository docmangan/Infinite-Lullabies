//
//  ViewController.swift
//  Infinite Lullabys
//
//  Created by William Thomas Mangan on 10/18/16.
//  Copyright © 2016 William Mangan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var volumeSlider: UISlider!
    
    var soundEffect1:AVAudioPlayer = AVAudioPlayer()
    var soundEffect2:AVAudioPlayer = AVAudioPlayer()
    var soundEffect3:AVAudioPlayer = AVAudioPlayer()
    var soundEffect4:AVAudioPlayer = AVAudioPlayer()
    var soundEffect5:AVAudioPlayer = AVAudioPlayer()
    var soundEffect6:AVAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let soundFile1 = Bundle.main.path(forResource:"soundEffect1", ofType: "mp3")
        let soundFile2 = Bundle.main.path(forResource:"soundEffect2", ofType: "mp3")
        let soundFile3 = Bundle.main.path(forResource:"soundEffect3", ofType: "mp3")
        let soundFile4 = Bundle.main.path(forResource:"soundEffect4", ofType: "mp3")
        let soundFile5 = Bundle.main.path(forResource:"soundEffect5", ofType: "mp3")
        let soundFile6 = Bundle.main.path(forResource:"soundEffect6", ofType: "mp3")
        
        
        do {
            
            try soundEffect1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile1!))
            try soundEffect2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile2!))
            try soundEffect3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile3!))
            try soundEffect4 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile4!))
            try soundEffect5 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile5!))
            try soundEffect6 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile6!))
            
            
        }
            
        catch {
            
            print(error)
            
        }
        
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func volume(_ sender: AnyObject) {
        
        soundEffect1.volume = volumeSlider.value
        soundEffect2.volume = volumeSlider.value
        soundEffect3.volume = volumeSlider.value
        soundEffect4.volume = volumeSlider.value
        soundEffect5.volume = volumeSlider.value
        soundEffect6.volume = volumeSlider.value
        
        
        
        
    }
    
    @IBAction func catButton(_ sender: AnyObject) {
        soundEffect1.currentTime = 0
        soundEffect2.stop()
        soundEffect3.stop()
        soundEffect4.stop()
        soundEffect5.stop()
        soundEffect6.stop()
        soundEffect1.play()
        
    }
    
    @IBAction func dogButton(_ sender: AnyObject) {
        soundEffect2.currentTime=0
        soundEffect1.stop()
        soundEffect3.stop()
        soundEffect4.stop()
        soundEffect5.stop()
        soundEffect6.stop()
        soundEffect2.play()
    }
    
    @IBAction func horseButton(_ sender: AnyObject) {
        soundEffect3.currentTime = 0
        soundEffect2.stop()
        soundEffect1.stop()
        soundEffect4.stop()
        soundEffect5.stop()
        soundEffect6.stop()
        soundEffect3.play()
    }
    
    @IBAction func sheepButton(_ sender: AnyObject) {
        soundEffect4.currentTime = 0
        soundEffect2.stop()
        soundEffect3.stop()
        soundEffect1.stop()
        soundEffect5.stop()
        soundEffect6.stop()
        soundEffect4.play()
    }
    
    @IBAction func pigButton(_ sender: AnyObject) {
        soundEffect5.currentTime = 0
        soundEffect2.stop()
        soundEffect3.stop()
        soundEffect4.stop()
        soundEffect1.stop()
        soundEffect6.stop()
        soundEffect5.play()
    }
    
    @IBAction func frogButton(_ sender: AnyObject) {
        soundEffect6.currentTime = 0
        soundEffect2.stop()
        soundEffect3.stop()
        soundEffect4.stop()
        soundEffect5.stop()
        soundEffect1.stop()
        soundEffect6.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        soundEffect1.stop()
        soundEffect2.stop()
        soundEffect3.stop()
        soundEffect4.stop()
        soundEffect5.stop()
        soundEffect6.stop()
       
    }
    
}

