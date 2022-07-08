//
//  ViewController.swift
//  Custom_Table
//
//  Created by Satyendra  Singh on 02/12/20.
//  Copyright © 2020 Satyendra  Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let names = ["Jeff","Elon","Bill","Mark"]

    
    @IBOutlet weak var table_Data: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setupp after loading the view.
    }

}
extension ViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "SceondViewController") as? SceondViewController{
            vc.img = UIImage(named: names[indexPath.row])!
            vc.user_name = names[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.lbl_name.text = names[indexPath.row]
        cell.img_View.image = UIImage(named: names[indexPath.row])
        cell.img_View.layer.cornerRadius = 40.0
        cell.img_View.layer.borderColor = #colorLiteral(red: 0, green: 0.7607843137, blue: 0.6235294118, alpha: 1)
        cell.img_View.layer.borderWidth = 1.0
       return cell
    }
 
}
