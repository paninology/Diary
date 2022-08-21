//
//  WriteViewController.swift
//  Diary
//
//  Created by yongseok lee on 2022/08/21.
//

import UIKit

class WriteViewController: BaseViewController {
    
    var mainView = WriteView()
    
    override func loadView() { 
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func configure() {
        mainView.titleTextField.addTarget(self, action: #selector(titleTextFieldClicked(_:)), for: .editingDidEndOnExit)
        
        mainView.searchButton.addTarget(self, action: #selector(searchButtonClicked), for: .touchUpInside)
        
    }
    @objc func titleTextFieldClicked(_ textField: UITextField) {
        guard let text = textField.text, text.count > 0 else {
            showAlertMessage(title: "제목을 입력해주세요", button: "확인")
            return
        }
    }
    
    @objc func searchButtonClicked() {
        let vc = SearchViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
   
}
