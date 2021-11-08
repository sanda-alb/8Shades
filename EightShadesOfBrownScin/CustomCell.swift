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
            make.top.equalToSuperview().offset(5)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
        }
        
        image.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(10)
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
        }
    }
    
    private func setupAppereance() {
        
        label.textColor = .brown
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        

        image.layer.cornerRadius = 5
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
    }
}
