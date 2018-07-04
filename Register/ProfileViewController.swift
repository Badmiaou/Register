//
//  ProfileViewController.swift
//  Register
//
//  Created by Mohammad Rahimyarza Bagagarsyah on 04/07/18.
//  Copyright © 2018 Mohammad Rahimyarza Bagagarsyah. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    var firstName: String = ""
    var lastName: String = ""
    var address: String = ""
    var gender: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    nameLabel.text = "\(firstName) \(lastName)"
    addressLabel.text = address
        if gender == 0 {
            genderLabel.text = "Male"
        }
        else if gender == 1 {
            genderLabel.text = "Female"
        }
        else if gender == 2 {
            genderLabel.text = "Others"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
