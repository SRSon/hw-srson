//
//  ViewController.swift
//  HW3
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

var mainArray=[" "]
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet var majorTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath)
        cell.textLabel?.text=mainArray[(indexPath as NSIndexPath).row]
        
        // Configure the cell...
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        majorTableView.reloadData()
    }
    


}

