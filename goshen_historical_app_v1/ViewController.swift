//
//  ViewController.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 2/1/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import UIKit

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

