
//
//  ResidentialRequest.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 3/11/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import Foundation

import Alamofire


func getResidential(url_string: String) -> Array<Array<String>> {
	//Currently uses general read from file function, write_to_file() not yet implemented
    
    var stuff_string=""
    
    var arr = Array<Array<String>>()
	
	Alamofire.request(.GET, url_string)
		.responseString { response in
			stuff_string = response.result.value!
			
			if (stuff_string.rangeOfString("404  Not Found") != nil) {
				//Use contingency string
                print("Page 404'd")
                
                //If get request does not return a valid page, read from the file
                stuff_string = read_from_file()
			}
            else {
                
                print("Page didn't 404")
                
                //If get request does return a valid page, write the latest version of the page to file
                write_to_file(stuff_string)
            }
				var values_array = stuff_string.characters.split { $0 == "\n"}.map(String.init)
			
			for i in values_array {
				arr.append(i.componentsSeparatedByString("|"))
			}
			
	}
    
    return(arr)
}


func getBusiness(url_string: String) -> Array<Array<String>> {
    //DOES NOT HAVE BUSINESS SPECIFIC ADDRESS IMPLEMENTED
    //PLEASE IMPLEMENT BEFORE USING
    
    var stuff_string=""
    
    var arr = Array<Array<String>>()
    
    Alamofire.request(.GET, url_string)
        .responseString { response in
            stuff_string = response.result.value!
            
            if (stuff_string.rangeOfString("404  Not Found") != nil) {
                //Use contingency string
                print("Page 404'd")
                
                //If get request does not return a valid page, read from the file
                stuff_string = read_from_file()
            }
            else {
                
                print("Page didn't 404")
                
                //If get request does return a valid page, write the latest version of the page to file
                write_to_file(stuff_string)
            }
            let values_array = stuff_string.characters.split { $0 == "\n"}.map(String.init)
            
            for i in values_array {
                arr.append(i.componentsSeparatedByString("|"))
            }
            
    }
    
    return(arr)
}