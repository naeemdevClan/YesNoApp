//
//  ViewController.swift
//  YesNoApp
//
//  Created by codingpixel on 13/09/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtSearch: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtSearch.delegate = self
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(txtSearch.text == "Search"){
            txtSearch.text = ""
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        txtSearch.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
//        self.present(vc, animated: true, completion: nil)
        gotoAlertview()
        return true
    }
    
    func gotoAlertview(){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AlertViewController") as! AlertViewController
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: false, completion: nil)
    }
}
