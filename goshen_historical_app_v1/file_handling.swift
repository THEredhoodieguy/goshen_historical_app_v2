//
//  file_handling.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 3/15/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import Foundation

func read_from_file() -> String {
    var output_str = ""
    
    
    //Seems to be correct for compiled apps, but doesn't work in the simulator, leaving out for now
    //let destinationPath: String! = NSHomeDirectory() + "output_test.txt"
    
    //String to use for now
    let destinationPath: String! = "/Users/matthewwp/Desktop/goshen_historical_app_v2/goshen_historical_app_v1/output_test.txt"
	
    print(destinationPath)
    
    let filemgr = NSFileManager.defaultManager()
	
	
	
	// We need just to get the documents folder url
	let documentsUrl =  NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
	
	// now lets get the directory contents (including folders)
	do {
		let directoryContents = try NSFileManager.defaultManager().contentsOfDirectoryAtURL(documentsUrl, includingPropertiesForKeys: nil, options: NSDirectoryEnumerationOptions())
		print(directoryContents)
		
	} catch let error as NSError {
		print(error.localizedDescription)
	}
	
	
	
    if filemgr.fileExistsAtPath(destinationPath) {
        print("File exists")
        do {
            //Set file to output
            output_str = try String(contentsOfFile: destinationPath, encoding: NSUTF8StringEncoding)
        } catch let error as NSError {
            print("Error: \(error)")
        }
        
    }
    
    else {
        print("File does not exist")
    }
    
    return(output_str)
    
}

func write_to_file(input_str: String) -> Void {
    //TO DO
}
