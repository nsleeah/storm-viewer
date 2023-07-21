//
//  ViewController.swift
//  Storm
//
//  Created by Leah Simon on 21/07/2023.
//

import UIKit

class ViewController: UIViewController {
    //Declare Property Outside Method
    var pictures = [String]()

    override func viewDidLoad() { //Once Screen Has Loaded
        super.viewDidLoad()
        // Add NSL Images.
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
    


}

