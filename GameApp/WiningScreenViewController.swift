//
//  WinningViewController.swift
//  GameApp
//
//  Created by Akdag's Pro on 11.04.2021.
//

import UIKit
import Lottie

class WiningScreenViewController: UIViewController{
    @IBOutlet var winingAnimationView: UIView!
    @IBOutlet var winingLabel: UILabel!
    
    var winner : piece!
    var winingAnimation: AnimationView!
    
    override func viewWillAppear(_ animated: Bool) {
        switch winner {
        case .E:
            winingLabel.text = "DRAW 🤝🤝🤝"
        default:
            winingLabel.text = "\(winner!) WINS 🔥🔥🔥"
        }
        
        winingAnimation.frame = winingAnimationView.bounds
        winingAnimationView.addSubview(winingAnimation!)
        winingAnimation.loopMode = .repeat(3)
        winingAnimation.play()
    }
   
    
    
}
