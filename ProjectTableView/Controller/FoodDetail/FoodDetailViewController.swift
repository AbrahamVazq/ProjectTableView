//
//  FoodDetailViewController.swift
//  ProjectTableView
//
//  Created by Abraham Vazquez on 28/09/22.
//

import UIKit

class FoodDetailViewController: UIViewController {

    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var imgImagenFood: UIImageView!
    
    @IBOutlet weak var lblDescripcion: UILabel!
    
    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var lblRank: UILabel!
    
    @IBOutlet weak var tblExtras: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tblExtras.delegate = self
        self.tblExtras.dataSource = self
    }


 

}
extension FoodDetailViewController: UITableViewDelegate{
    
}
extension FoodDetailViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
}
