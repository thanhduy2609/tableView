//
//  FruitViewController.swift
//  TableView
//
//  Created by Cntt03 on 4/15/17.
//  Copyright © 2017 Cntt03. All rights reserved.
//

import UIKit

class FruitViewController: UITableViewController {

    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
    "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
    "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
    "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
    "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruits.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        let fruitName = fruits[indexPath.row];
        cell.textLabel?.text = fruitName;
        cell.detailTextLabel?.text = "Delicious"
        cell.imageView?.image = UIImage(named: fruitName);
        
        return cell
    }
 

}
