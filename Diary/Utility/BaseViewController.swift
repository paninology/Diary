//
//  BaseViewController.swift
//  Diary
//
//  Created by yongseok lee on 2022/08/21.
//

import UIKit


class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configure()
        
        
    }
    
    
    func configure() {
        
    }
    
    

    func showAlertMessage(title: String, button: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: button, style: .cancel)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}
