//
//  AlertViewController.swift
//  YesNoApp
//
//  Created by codingpixel on 13/09/2021.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.borderWidth = 1
        mainView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        mainView.layer.cornerRadius = 16
        // Do any additional setup after loading the view.
    }
    
    @IBAction func yesAction(_ sender: UIButton) {
    }
    @IBAction func noAction(_ sender: UIButton) {
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
