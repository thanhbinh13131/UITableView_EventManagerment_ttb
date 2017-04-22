//
//  TableViewController_ttb.swift
//  UITableView_ttb
//
//  Created by admin25 on 4/19/17.
//  Copyright © 2017 admin25. All rights reserved.
//

import UIKit

class TableViewController_ttb: UITableViewController {

    
//    var products: [Product] {
//        var productLines = ProductLine.productLines()
//        return productLines[2].products
//    }
    var dates:[String] = ["Monday", "Tuesday", "Wenesday", "Thursday", "Friday", "Saturday", "Sunday"]
    var monday:[String] = ["Event 1 Monday", "Event 2 Monday"]
    var tuesday:[String] = ["Event 1 tue", "Event 2 tue"]
    var wenesday:[String] = ["Event 1 wens", "Event 2 wens"]
    var thursday:[String] = ["Event 1 thur", "Event 2 thur"]
    var friday:[String] = ["Event 1 fri", "Event 2 fri"]
    var saturday:[String] = ["Event 1 sat", "Event 2 sat"]
    var sunday:[String] = ["Event 1 Sun", "Event 2 sun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
       return dates.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0{
            return monday.count
        }
        
        else if section == 1 {
            return tuesday.count
        }
        
        else if section == 2 {
            return wenesday.count
        }
        
        else if section == 3 {
            return thursday.count
        }
        
        else if section == 4 {
            return friday.count
        }
        
        else if section == 5 {
            return saturday.count
        }
        return sunday.count
    }

    //IndexPath: which section which row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Product ttb", for: indexPath)

//        let product = products[indexPath.row]
//        cell.textLabel?.text = product.title
//        cell.detailTextLabel?.text = product.description
//        cell.imageView?.image = product.image
//
//        return cell
        if indexPath.section == 0 {
           
            cell.textLabel?.text = monday[indexPath.row]

            return cell
        }
        
        else if indexPath.section == 1 {
            
            cell.textLabel?.text = tuesday[indexPath.row]
            return cell
        }
        
        else if indexPath.section == 2 {
            
            cell.textLabel?.text = wenesday[indexPath.row]
            return cell
        }
        
        else if indexPath.section == 3 {
            
            cell.textLabel?.text = thursday[indexPath.row]
            return cell
        }
        
        else if indexPath.section == 4 {
            
            cell.textLabel?.text = friday[indexPath.row]
            return cell
        }
        
        else if indexPath.section == 5 {
            
            cell.textLabel?.text = saturday[indexPath.row]
            return cell
        }
        
        else if indexPath.section == 6 {
            cell.textLabel?.text = sunday[indexPath.row]
            return cell
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dates[section]

    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
