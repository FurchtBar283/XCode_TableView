//
//  ViewController.swift
//  TableView
//
//  Created by Michael Stroh on 29.12.15.
//  Copyright © 2015 Michael Stroh. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var textArraySection0 = ["Äpfel", "Birnen", "Zwetschgen"]
    var textArraySection1 = ["Schnittlauch", "Petersilie"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var sectionTitle = ""
        
        if section == 0 {
            sectionTitle = "Sektion Obst"
        } else if section == 1 {
            sectionTitle = "Sektion Gemüse"
        }
        return sectionTitle
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = textArraySection0[indexPath.row]
        } else {
            cell.textLabel?.text = textArraySection1[indexPath.row]
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount: Int = 0
        if section == 0 {
            rowCount = textArraySection0.count
        } else if section == 1 {
            rowCount = textArraySection1.count
        }
        return rowCount
    }


}

