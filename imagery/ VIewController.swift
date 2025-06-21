//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController{
    
    @IBOutlet weak var animalImageLabel: UIImageView!
    
    @IBOutlet weak var buttonLabel: UIButton!
    var audioPlayer : AVAudioPlayer?
    var animalImagesArray = ["image1","image2","image3","image4","image5", "image6","image7","image8"]
    let sounds = ["note1", "note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func whoDoYouLookLikeButtonPressed(_ sender: UIButton) {
        if let randomImageName = animalImagesArray.randomElement(){
            animalImageLabel.image = UIImage(named: randomImageName)
        }
        
        
        if let randomSoundName = sounds.randomElement(),
            let soundURL = Bundle.main.url(forResource: randomSoundName, withExtension: ".wav"){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.play()
            } catch{
                    print("error playing this sound")
                }
            }
        }
        
    }
    
  



