//
//  ViewController.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 2/1/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import UIKit

import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var sampletext: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "http://people.goshen.edu/~matthewwp/test_stuff.txt"
        //let url = "https://mattpletcher.wordpress.com/feed"
        
        var stuff_string = ""
        
        Alamofire.request(.GET, url)
            .responseString { response in
                stuff_string = response.result.value!
                print(stuff_string)
        }
        print(stuff_string)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

