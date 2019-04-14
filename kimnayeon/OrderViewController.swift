//
//  OrderViewController.swift
//  kimnayeon
//
//  Created by SWUCOMPUTER on 13/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var colorView: UIImageView!
  
    
    let colorshowImage = UIImage(named: "color.jpg")
   
    
    
    var info: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contentString = info
        {
            infoLabel.text = contentString
            colorView.image = colorshowImage
        }
        // Do any additional setup after loading the view.
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
