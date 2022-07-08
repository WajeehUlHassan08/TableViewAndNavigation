//
//  SceondViewController.swift
//  Custom_Table
//
//  Created by Satyendra  Singh on 02/01/21.
//  Copyright © 2021 Satyendra  Singh. All rights reserved.
//

import UIKit

class SceondViewController: UIViewController {

    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var img_View: UIImageView!
    
    var img = UIImage()
    var user_name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_Name.text = "Hey! i am \(user_name)."
        img_View.image = img

    }
    


}
