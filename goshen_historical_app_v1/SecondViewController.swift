//
//  SecondViewController.swift
//  goshen_historical_app_v1
//
//  Created by Kendall Paul Friesen on 3/4/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import Foundation

import UIKit

import Alamofire



class SecondViewController: UIViewController {
    
    @IBOutlet weak var sampletext2: UILabel!
    @IBOutlet weak var sampletext: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sampletext2.text = big_array[3][4]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

