//
//  ViewController.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 2/1/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//


import UIKit

import Foundation

import Alamofire

var big_array = Array<Array<String>>()

var values_array = []

class ViewController: UIViewController {

    @IBOutlet weak var sampletext: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = "http://people.goshen.edu/~matthewwp/output_test.txt"
        
        var stuff_string = ""
		
		Alamofire.request(.GET, url)
			.responseString { response in
				stuff_string = response.result.value!
                
                print(stuff_string)
                
                if (stuff_string.rangeOfString("404 Not Found") != nil) {
                    
                    print("Page 404'd")
                    
                    //If get request does not return a valid page, read from the file
                    stuff_string = read_from_file()
                }
                else {
                    
                    print("Page didn't 404")
                    
                    //If get request does return a valid page, write the latest version of the page to file
                    write_to_file(stuff_string)
                }
                
                values_array = stuff_string.characters.split { $0 == "\n"}.map(String.init)
                
                for i in values_array {
                     big_array.append(i.componentsSeparatedByString("|"))
                }
                
                print(big_array)

                //self.sampletext.text = big_array[3][4]
                /*Alamofire.request(.GET, big_array[3][3]).response { (request, response, data, error) in
                self.picture.image = UIImage(data: data!, scale:1)
                }*/
                //print(String(values_array))
                
                
                
                
        }
        
		
		
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

