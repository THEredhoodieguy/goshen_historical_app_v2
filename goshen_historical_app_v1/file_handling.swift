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
    if filemgr.fileExistsAtPath(destinationPath) {
        print("File exists")
        do {
            let readFile = try String(contentsOfFile: destinationPath, encoding: NSUTF8StringEncoding)
            output_str = readFile
            
            print(readFile)
            // the above prints "some text"
        } catch let error as NSError {
            print("Error: \(error)")
        }
        
    }
    
    else {
        print("File does not exist")
    }
    
    return(output_str)
    
}

func write_to_file() -> Void {
    //TO DO
}
