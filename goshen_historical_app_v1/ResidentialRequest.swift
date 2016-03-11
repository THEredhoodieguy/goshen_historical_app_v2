
//
//  ResidentialRequest.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 3/11/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import Foundation

import Alamofire


func getResidential(var arr: Array<Array<String>>, url_string: String) {
	var stuff_string=""
	
	
	Alamofire.request(.GET, url_string)
		.responseString { response in
			stuff_string = response.result.value!
			
			if (stuff_string.rangeOfString("404  Not Found") != nil) {
				//Use contingency string
				//stuff_string = <CONTINGENCY STRING>
			}
				values_array = stuff_string.characters.split { $0 == "\r\n"}.map(String.init)
			
			for i in values_array {
				arr.append(i.componentsSeparatedByString("|"))
			}
			
	}
}


func getBusiness(var arr: Array<Array<String>>, url_string: String) {
	var stuff_string=""
	
	
	Alamofire.request(.GET, url_string)
		.responseString { response in
			stuff_string = response.result.value!
			
			if (stuff_string.rangeOfString("404  Not Found") != nil) {
				//Use contingency string
				//stuff_string = <CONTINGENCY STRING>
			}
			values_array = stuff_string.characters.split { $0 == "\r\n"}.map(String.init)
			
			for i in values_array {
				arr.append(i.componentsSeparatedByString("|"))
			}
			
	}
}



/*Alamofire.request(.GET, url)
	.responseString { response in
		stuff_string = response.result.value!
		values_array = stuff_string.characters.split { $0 == "\r\n"}.map(String.init)
		for i in values_array {
			big_array.append(i.componentsSeparatedByString("|"))
		}
		
		//self.sampletext.text = big_array[3][4]
		Alamofire.request(.GET, big_array[3][3]).response { (request, response, data, error) in
			self.picture.image = UIImage(data: data!, scale:1)
		}
		
		
}*/