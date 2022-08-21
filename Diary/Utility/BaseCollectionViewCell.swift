//
//  BaseCollectionViewCell.swift
//  Diary
//
//  Created by yongseok lee on 2022/08/21.
//

import UIKit

class BaseCollectionViewCell : UICollectionViewCell {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        ConfigureUI()
        setContraints()
  
    }
 
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func ConfigureUI() {
        
    }
    
    func setContraints() {
        
    }

    
}
