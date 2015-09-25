//
//  ViewController.swift
//  Times Tables
//
//  Created by Toph Matta on 9/22/15.
//  Copyright (c) 2015 Toph Matta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var chosenNumberLabel: UILabel!
    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        chosenNumberLabel.text! = "\(Int(sliderValue.value))"
        
        table.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(sliderValue.value)
        
        cell.textLabel?.text = String(timesTable * indexPath.row) + " = \(Int(sliderValue.value)) X \(indexPath.row)"
        
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

