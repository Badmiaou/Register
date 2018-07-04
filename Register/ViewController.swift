//
//  ViewController.swift
//  Register
//
//  Created by Mohammad Rahimyarza Bagagarsyah on 04/07/18.
//  Copyright © 2018 Mohammad Rahimyarza Bagagarsyah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var genderOutlet: UISegmentedControl!
    @IBOutlet weak var firstNameOutlet: UITextField!
    @IBOutlet weak var lastNameOutlet: UITextField!
    @IBOutlet weak var addressOutlet: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    var genderIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    // Mark -Register Button
    
    @IBAction func RegisterAction(_ sender: Any) {
        if(firstNameOutlet.text == ""){
            statusLabel.text = "Pleese write your first name"
        }else if (lastNameOutlet.text == "") {
            statusLabel.text = "Pleese write your last name"
        }else if (addressOutlet.text == ""){
            statusLabel.text = "Pleese write your address"
        }else{
            performSegue(withIdentifier: "Profile", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Profile" {
            let destVC = segue.destination as! ProfileViewController
            destVC.firstName = firstNameOutlet.text!
            destVC.lastName = lastNameOutlet.text!
            destVC.address = addressOutlet.text!
            destVC.gender = genderOutlet.selectedSegmentIndex
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

