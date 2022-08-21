//
//  BlackRadiusTextField.swift
//  Diary
//
//  Created by yongseok lee on 2022/08/21.
//

import UIKit

class BlackRadiusTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = .clear
        textAlignment = .center
        borderStyle = .none
        font = .boldSystemFont(ofSize: 15)
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        
    }
}

