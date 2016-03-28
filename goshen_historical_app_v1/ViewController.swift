//
//  ViewController.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 2/1/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import UIKit

import Alamofire

var big_array = Array<Array<String>>()

var values_array = []

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        var siteArray = [Site]!
//        siteArray = [Site]()
        
//        let site1 = Site(name: "site1", type: 1, photo: nil, shortText: "This is a test site.", longText: "This is a test site with long text.")
//        //siteList.insert("site1", atIndex: 0);
//        let siteArray = [site1]
//        print(siteArray.count)
		
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
					
					if(file_exists()) {
						stuff_string = read_from_file()
					}
					else {
						write_to_file(beginning_text_string)
						stuff_string = beginning_text_string
					}
					
				}
				else {
					
					print("Page didn't 404")
					
					//If get request does return a valid page, write the latest version of the page to file
					write_to_file(stuff_string)
				}
				
				write_to_file(stuff_string)
				
				values_array = stuff_string.characters.split { $0 == "\n"}.map(String.init)
				
				for i in values_array {
					big_array.append(i.componentsSeparatedByString("|"))
				}
				
				print(big_array)

		}
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //test
    //test2
		
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "Home"
    }



}