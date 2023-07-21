//
//  ViewController.swift
//  Storm
//
//  Created by Leah Simon on 21/07/2023.
//

import UIKit

class ViewController: UITableViewController { //ViewController inherits from UITable - Extra Functionality.
    //Declare Property Outside Method
    var pictures = [String]()

    override func viewDidLoad() { //Once Screen Has Loaded
        super.viewDidLoad()
        // Add NSL Images.
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        //All Constants Destroyed Once Loaded
        
        for item in items {
            if item.hasPrefix("nssl"){
                //This is a Picture To Load
                pictures.append(item)
            }
        }
        print(pictures)
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}

