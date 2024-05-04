//
//  ViewController.swift
//  NetworkLayerSolid
//
//  Created by Ankit on 04/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        // Do any additional setup after loading the view.
    }

    func getData() {
        let userService = UserService()
        userService.getUsers { response in
            switch response {
            case .success(let users):
                print(users.compactMap{ $0.name }.joined(separator: ", "))
            case .failure(_):
                print("Api error")
                    
            }
        }
    }

}

