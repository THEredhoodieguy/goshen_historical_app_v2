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

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set initial location in Goshen
        let initialLocation = CLLocation(latitude: 41.585102, longitude: -85.834294)
        //41.585102, -85.834294
        
        centerMapOnLocation(initialLocation)
        
        mapView.delegate = self
        
        // show sites on map
        let artwork = Site(title: "The Spohn Building",
            locationName: "109 E Clinton St",
            discipline: "Building",
            coordinate: CLLocationCoordinate2D(latitude: 41.588001, longitude: -85.834014))
        
        mapView.addAnnotation(artwork)
        
    }
    
    let regionRadius: CLLocationDistance = 500
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}

