//  ViewController.swift
//  ProjectTableView
//  Created by Moisés Abraham Vázquez Pérez on 07/09/22.

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
        didSet{ self.vwImage.layer.cornerRadius = 50 }
    }
    
    @IBOutlet weak var lblUser: UITextField!{
        didSet{ self.lblUser.delegate = self }
    }
    
    @IBOutlet weak var lblPsswrd: UITextField!{
        didSet{ self.lblPsswrd.delegate = self }
    }
    
    //MARK: - D A T O S
    let arrUsers: [String] = ["Luis_28", "AnaPata", "GisSemjase", "BioMoi"]
    let arrPassW: [String] = ["neilgaiman300","nidodepatas","fall30", "placebomusic"]
    var MyUser: String = ""
    var MyPass: String = ""
    
    //MARK: - L I F E · C Y C L E
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.lblUser.becomeFirstResponder()
    }
    
    
    //MARK: - F U N C T I O N S
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
            let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
            alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    
    
    //MARK: - V A L I D A T I O N S
    func validaCampoTx(EnMiBase usrs: [String], YDato nom: String) -> Bool {
        if usrs.contains(nom){
          return true
        }else{
          return false
        }
    }
    
    //MARK: - A C T I O N S
    @IBAction func BtnInicio(_ sender: Any) {
        MyPass = lblPsswrd.text ?? "No hay Pass"
        MyUser = lblUser.text ?? "no hay user"
        
        if validaCampoTx(EnMiBase: arrUsers, YDato: MyUser) && validaCampoTx(EnMiBase: arrPassW, YDato: MyPass)
        {
            self.performSegue(withIdentifier: "VistaTabla", sender: self)
        }else{
            self.showAlert(WithTitle: "¡Alerta!", AndMessage: "Hay un error o eres un espia")
        }
        
    }

}

//MARK: - EXTENSION - UI·TEXFIELD·DELEGATE
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.BtnInicio(self)
        return true
    }
}
