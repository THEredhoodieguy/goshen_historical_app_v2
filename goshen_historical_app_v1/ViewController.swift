//
//  ViewController.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 2/1/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import UIKit
import MapKit

var siteArray:[Site] = [Site]()

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1) {
        assert(hex[hex.startIndex] == "#", "Expected hex string of format #RRGGBB")
        
        let scanner = NSScanner(string: hex)
        scanner.scanLocation = 1  // skip #
        
        var rgb: UInt32 = 0
        scanner.scanHexInt(&rgb)
        
        self.init(
            red:   CGFloat((rgb & 0xFF0000) >> 16)/255.0,
            green: CGFloat((rgb &   0xFF00) >>  8)/255.0,
            blue:  CGFloat((rgb &     0xFF)      )/255.0,
            alpha: alpha)
    }
}


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
        
        
//        let label: UILabel = UILabel(frame: CGRectMake(0, self.view.frame.minY, self.view.frame.size.width, 120))
//        label.textAlignment = NSTextAlignment.Center
//        label.text = "Historic Goshen"
//        label.font = UIFont(name: "Nickainley", size: 35)
//        label.backgroundColor = UIColor(hex: "#563530",alpha: 1)
//        label.textColor = UIColor.whiteColor()
//        self.view.addSubview(label)

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
        let site1 = Site(title: "The Spohn Building",
            locationName: "109 E Clinton St",
            discipline: "Building",
            coordinate: CLLocationCoordinate2D(latitude: 41.588001, longitude: -85.834014))
        
        mapView.addAnnotation(site1)
        siteArray.append(site1)
        
    }
    
    let regionRadius: CLLocationDistance = 500
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}

class ListViewController: UITableViewController {
    
//    override func viewDidLoad() {
//    super.viewDidLoad()
//            
//        for site: Site in siteArray {
//            site.locationName
//        }
//            
//    }
//    
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return siteArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 3
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell", forIndexPath: indexPath) as! UITableViewCell
        
//        cell.textLabel!.text = siteArray[indexPath.item]
//        cell.textLabel!.text = "test"
        return cell
    }
    
    
}

