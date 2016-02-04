//
//  ViewController.swift
//  Times Tables
//
//  Created by Simranjit Kaur on 4/02/2016.
//  Copyright © 2016 Simranjit Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate {

    @IBOutlet weak var sliderValue: UISlider!
    
    
    @IBOutlet weak var table: UITableView!
   
    //var number = Int(sliderValue)
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
        let cell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timestable =  Int (sliderValue.value)
    
        let productValue = String(timestable * (indexPath.row + 1))
        
        cell.textLabel?.text = "\(timestable) *  \(indexPath.row + 1) = \(productValue)"
            
            //String(timestable * (indexPath.row + 1))
            //String(timestable * indexPath.row)
        return cell
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

