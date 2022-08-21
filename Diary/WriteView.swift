//
//  WriteView.swift
//  Diary
//
//  Created by yongseok lee on 2022/08/21.
//

import UIKit
import SnapKit

class WriteView: BaseView {
    
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = .lightGray
        return view
    }()
    
    let titleTextField: BlackRadiusTextField = {
       let view = BlackRadiusTextField()
        view.placeholder = " 제목을 입력 해주세요 "
        return view
    }()
    
    let dateTextField: BlackRadiusTextField  = {
        let view = BlackRadiusTextField()
         view.placeholder = " 날짜를 입력 해주세요 "
         return view
    }()
    
    let contentTextView: UITextView = {
        let view = UITextView()
         view.layer.borderColor = UIColor.black.cgColor
         view.layer.borderWidth = 1
         return view
    }()
    
    let searchButton: UIButton = {
       let view = UIButton()
        view.layer.cornerRadius = 34
        view.clipsToBounds = true
        view.setTitle("Search", for: .normal)
        view.backgroundColor = .brown
        return view
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func ConfigureUI() {
        [photoImageView, titleTextField, dateTextField, contentTextView, searchButton].forEach {
            self.addSubview($0)
        }
        
    }
    
    override func setContraints() {
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.3)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
        
        searchButton.snp.makeConstraints { make in
            make.bottom.equalTo(photoImageView.snp.bottom).offset(-4)
            make.trailing.equalTo(photoImageView.snp.trailing).offset(-4)
            make.width.height.equalTo(68)
        
            
        }
    }
    
    
}
