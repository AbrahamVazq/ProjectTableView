//
//  ViewController.swift
//  ProjectTableView
//
//  Created by Moisés Abraham Vázquez Pérez on 07/09/22.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - O U T L E T S
    @IBOutlet weak var vwContainer: UIView!{
        didSet{
            self.vwContainer.layer.cornerRadius = 15
            self.vwContainer.backgroundColor = UIColor(red: 236, green: 240, blue: 241, alpha: 0.35)
        }
    }
    @IBOutlet weak var vwImage: UIImageView!{
        didSet{
            self.vwImage.layer.cornerRadius = 50
        }
    }
    
    @IBOutlet weak var lblUser: UITextField!
    @IBOutlet weak var lblPsswrd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

