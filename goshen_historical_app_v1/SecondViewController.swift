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

var pageNumber: Int = 1


class SecondViewController: UIViewController {
    
    @IBOutlet weak var picture2: UIImageView!
	@IBAction func nextHouse(sender: AnyObject) {
		if(pageNumber==big_array.count){
			pageNumber = 1
			self.sampletext2.text = big_array[pageNumber][4]
            
            Alamofire.request(.GET, big_array[pageNumber][3]).response { (request, response, data, error) in
                self.picture2.image = UIImage(data: data!, scale:1)
            }
		}
		else{
			pageNumber++
			self.sampletext2.text = big_array[pageNumber][4]
            
            Alamofire.request(.GET, big_array[pageNumber][3]).response { (request, response, data, error) in
                self.picture2.image = UIImage(data: data!, scale:1)
            }
		}
	}
    @IBOutlet weak var sampletext2: UILabel!
    @IBOutlet weak var sampletext: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
		self.sampletext2.text = big_array[pageNumber][4]
        
        Alamofire.request(.GET, big_array[pageNumber][3]).response { (request, response, data, error) in
            self.picture2.image = UIImage(data: data!, scale:1)
        }
		
		
		
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

