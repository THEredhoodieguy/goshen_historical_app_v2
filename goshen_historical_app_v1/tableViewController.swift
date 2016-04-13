//
//  tableViewController.swift
//  goshen_historical_app_v1
//
//  Created by Kendall Paul Friesen on 4/8/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import UIKit
import CoreData
import Alamofire


let samplelabels  = ["Kendall","is","a","person","","","","",""]

class tableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var json_data_url = "http://www.kaleidosblog.com/tutorial/json_table_view_images.json"
    var image_base_url = "http://www.kaleidosblog.com/tutorial/"
    
    
    enum ErrorHandler:ErrorType
    {
        case ErrorFetchingResults
    }
    
    
    
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let label = samplelabels[indexPath.row]
        let data = TableData[indexPath.row]
        
        
        cell.textLabel?.text = label
        

            Alamofire.request(.GET, big_array[3][3]).response { (request, response, data, error) in
                
            cell.imageView?.image = UIImage(data: data!, scale:1)
                
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return TableData.count
    }
    

    
}


