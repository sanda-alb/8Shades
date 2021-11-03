//
//  ViewController.swift
//  EightShadesOfBrownScin
//
//  Created by TK_User on 03.11.2021.
//

import SnapKit
import UIKit


class ViewController: UIViewController {
    
    
    var tableView = UITableView()
    private let cardView = UIView()
    private let image = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAll()
    }
    
    private func setupAll() {
        embedViews()
        setupAppereance()
        setupLayout()
    }
    
    private func embedViews() {
        [tableView,
         cardView
            ].forEach {
                view.addSubview($0)
            }
    }
    
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupAppereance() {
        tableView.rowHeight = 100
        tableView.backgroundColor = UIColor.white
        
        cardView.layer.cornerRadius = 10
        cardView.backgroundColor = UIColor.white
        
        
    }
    
    func configureTableView() {
//        setTableViewDelegates()
    }
    
//    func setTableViewDelegates() {
//        tableView.delegate = self
//        tableView.datasource = self
//    }
}

  
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

