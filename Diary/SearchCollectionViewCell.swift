//
//  SearchCollectionViewCell.swift
//  Diary
//
//  Created by yongseok lee on 2022/08/21.
//

import UIKit

class SearchCollectionViewCell: BaseCollectionViewCell {
    
    let resultImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "xmark")
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("cell ====")
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func ConfigureUI() {
        [resultImageView].forEach { self.addSubview($0) }
    }
    
    override func setContraints() {
        resultImageView.snp.makeConstraints { make in
            make.leading.top.trailing.bottom.equalTo(0)
        }
    }
    
 
    
    
    
}
