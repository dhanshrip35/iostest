//
//  DistrictsTableTableViewController.swift
//  tableVCExample
//
//  Created by Dhanshri Pawar on 29/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class DistrictsTableTableViewController: UITableViewController {
    
    var numberOfRows : Int = 0
    
    var state : String = ""
    
    var AndraPradesh = ["Anantpur","Chittoor","East Godavari","Guntur","Kapada"]
    var ArunachalPradesh = ["Anjaw","Changlang","Kamle"]
    var Assam = ["Baska","Cachar","Dhubri"]
    var Bihar = ["Arwal","Patna","Saran"]
    var Chattisgarh = ["Batar", "Bijapur"]
    var Maharashtra = ["Sangli","Satara","Pune","Osmanabad","Kolhapur","Solapur","Mumbai"]
    
    var districtData : [String:[String]] = ["":[""]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        districtData = ["Andra Pradesh" : AndraPradesh,"Arunachal Pradesh" : ArunachalPradesh,"Assam" : Assam,"Bihar" : Bihar,"Chattisgarh" : Chattisgarh,"Maharashtra" : Maharashtra]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return districtData[state]!.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        }
 
        let cellData = districtData[state]
        
        cell?.textLabel?.text = cellData![indexPath.row]

        return cell!
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}