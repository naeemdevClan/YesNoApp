//
//  SearchResultVC.swift
//  YesNoApp
//
//  Created by codingpixel on 13/09/2021.
//

import UIKit

class SearchResultVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // tableView.register(UINib(nibName: String(describing:"RestaurantCell"), bundle: nil), forCellReuseIdentifier: String(describing: "RestaurantCell"))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()


    }
    @IBAction func backButtonAction(_ sender:UIButton){
        self.dismiss(animated: true, completion: nil)
    }
}

extension SearchResultVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell") as! RestaurantCell

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewViewController") as! WebViewViewController
        self.present(vc, animated: true, completion: nil)
    }
}
