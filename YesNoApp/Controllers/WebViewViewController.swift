//
//  WebViewViewController.swift
//  YesNoApp
//
//  Created by codingpixel on 13/09/2021.
//

import UIKit
import WebKit
class WebViewViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL (string: "https://www.google.com/maps/place/Zakir+Tikka+Johar+Town/@31.4767819,74.2503534,13z/data=!4m9!1m2!2m1!1szakir+tiika!3m5!1s0x391903d72464dcb7:0xcc561c4cf59d28b2!8m2!3d31.4697565!4d74.2737319!15sCgt6YWtpciB0aWtrYVoNIgt6YWtpciB0aWtrYZIBCnJlc3RhdXJhbnQ")
        let requestObj = URLRequest(url: url!)
        webView.load(requestObj)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonAction(_ sender:UIButton){
        self.dismiss(animated: true, completion: nil)
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
