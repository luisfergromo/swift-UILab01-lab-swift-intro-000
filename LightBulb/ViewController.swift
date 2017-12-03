//
//  ViewController.swift
//  LightBulb
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //    @IBOutlet weak var lightBulb: UIImageView!
    @IBOutlet weak var btnBulb: UIButton!
    @IBOutlet weak var adviceLabel: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //        lightBulb.backgroundColor = UIColor.blue
                adviceLabel.text = "Touch one color to turn on the bulb"
    }
    func isItOff(){
        if(btnBulb.backgroundColor == UIColor.black){
            adviceLabel.text = "The bulb is off, select a color to turned on"
        }else{
            btnBulb.backgroundColor = UIColor.black
            adviceLabel.text = "If you whant to turn the bulb on, touch a color"
        }
    }
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            btnBulb.backgroundColor = UIColor.red
            print(sender.selectedSegmentIndex)
            adviceLabel.text = "If you whant to turn the bulb off, just touch it"
        case 1:
            btnBulb.backgroundColor = UIColor.yellow
            print(sender.selectedSegmentIndex)
            adviceLabel.text = "If you whant to turn the bulb off, just touch it"
        case 2:
            btnBulb.backgroundColor = UIColor.blue
            print(sender.selectedSegmentIndex)
            adviceLabel.text = "If you whant to turn the bulb off, just touch it"
        case 3:
            btnBulb.backgroundColor = UIColor.green
            print(sender.selectedSegmentIndex)
            adviceLabel.text = "If you whant to turn the bulb off, just touch it"
        default:
            break
        }
    }
    @IBAction func bulbBtn(_ sender: UIButton) {
        isItOff()
    }
}

