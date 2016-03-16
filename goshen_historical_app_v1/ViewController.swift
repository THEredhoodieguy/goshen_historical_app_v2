//
//  ViewController.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 2/1/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import UIKit
import MapKit

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
    
    @IBAction func WebLink(sender: AnyObject) {
        if let url = NSURL(string: "http://www.goshenhistorical.org/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }


}

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        
        centerMapOnLocation(initialLocation)
        
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}

