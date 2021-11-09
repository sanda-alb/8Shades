//
//  InfoViewController.swift
//  EightShadesOfBrownScin
//
//  Created by TK_User on 09.11.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    var info = UITextView()
    var label = UILabel()
    override func viewDidLoad() {
          super.viewDidLoad()
        
       setupAll()
      }
    
    private func setupAll() {
        embedViews()
        setupLayout()
        setupAppearance()
    }
    
    private func embedViews() {
        [ info,
          label
        ].forEach {
            view.addSubview($0)
        }
    }
    
    private func setupLayout() {
        view.backgroundColor = .white
        
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin).offset(15)
        }
        
        info.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalToSuperview().offset(-40)
            make.top.equalTo(label.snp.bottom).offset(20)
        }
    }
    
    private func setupAppearance() {
        navigationController?.navigationBar.tintColor = .white
        
        label.textColor = .brown
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.backgroundColor = .white
        
        info.font = UIFont.systemFont(ofSize: 15)
        info.textAlignment = .justified
        
        
    }
}
