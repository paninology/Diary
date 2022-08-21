//
//  SearchView.swift
//  Diary
//
//  Created by yongseok lee on 2022/08/21.
//


import UIKit

class SearchView: BaseView {
    
    
    let searchBar: UISearchBar = {
        let view = UISearchBar()
        
        return view
    }()
    
    let searchCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)

        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func ConfigureUI() {
        [searchBar, searchCollectionView].forEach { self.addSubview($0)  }
    }
    
    override func setContraints() {
        
        
        searchBar.snp.makeConstraints { make in
            make.topMargin.equalTo(8)
            make.leading.trailing.equalTo(8)
            
        }
        searchCollectionView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(8)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    
    
    
}



