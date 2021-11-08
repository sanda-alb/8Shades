//
//  CustomCell.swift
//  EightShadesOfBrownScin
//
//  Created by TK_User on 08.11.2021.
//

import SnapKit
import UIKit

class CustomCell: UITableViewCell {
    
    var image = UIImageView()
    var label = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupAll()
    }
    
    private func setupAll() {
        embedViews()
        setupLayout()
        setupAppereance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func embedViews() {
        [ image,
          label
        ].forEach {
            contentView.addSubview($0)
        }
    }
    
    private func setupLayout() {
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
        }
        
        image.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(5)
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
            make.height.equalTo(200)
        }
    }
    
    private func setupAppereance() {
        
        label.textColor = .brown
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.numberOfLines = 2
        
//        image.contentMode = .scaleAspectFit
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 5
    }
}
