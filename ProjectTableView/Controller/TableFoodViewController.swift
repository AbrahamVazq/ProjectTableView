//
//  TableFoodViewController.swift
//  ProjectTableView
//
//  Created by Mac on 12/09/22.
//

import UIKit

class tableFoodViewController: UIViewController {
    
    @IBOutlet weak var FoodTable: UITableView!
    
    
    let arrFoodName: [String] = ["EnsaladaConHongos","PechugaJardinera","Camarones","Sushi","PolloFrito","Salmon","Arrachera","PechugaYEnsalada","SushiSalmon","Albondigas"]
    
    let arrDescrFood: [String] = ["Muy Fresca","Se sirve con pan","Pidelos a la diabla","Solo o empanizado","Pidelo con papas tambien","Directamente desde Japón","De la res mas brava","Se vale repetir","Este es un clasico","Pidelas con salsa bolognesa"]
    
    
    let arrFoodPrice: [String] = ["$ 350 ","$ 250","$ 150","$ 180","$ 200","$ 200","$ 350","$ 320","$ 290","$ 240"]

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
              self.FoodTable.delegate = self
              self.FoodTable.dataSource = self
              

              let nibCellFood = UINib(nibName: "CellFoodTableViewCell", bundle: .main)
              self.FoodTable.register(nibCellFood, forCellReuseIdentifier: "FoodCell")
    }
}


extension tableFoodViewController: UITableViewDelegate & UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrFoodName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cellFood = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as?
             CellFoodTableViewCell ?? CellFoodTableViewCell()
             cellFood.lblTitleFood.text = arrFoodName[indexPath.row]
            cellFood.lblDescFood.text = arrDescrFood[indexPath.row]
            cellFood.imgFood.image = UIImage(named: arrFoodName[indexPath.row])
        cellFood.lblPrice.text = arrFoodPrice[indexPath.row]
            return cellFood
    }
}
