//
//  DetailViewController.swift
//  Storm
//
//  Created by Leah Simon on 21/07/2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView! //Optional - Missing Data
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
