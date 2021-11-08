//
//  ViewController.swift
//  EightShadesOfBrownScin
//
//  Created by TK_User on 03.11.2021.
//

import SnapKit
import UIKit


class ViewController: UIViewController {


    let tableView = UITableView()
    var photo = UIImage(named: "blackGirl")
    let text = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupAll()
    }

    private func setupAll() {
        embedViews()
        setupLayout()
        setupAppereance()
        configureTableView()
        
    }

    private func embedViews() {
        view.addSubview(tableView)

    }

    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 30, right: 0)
    }

    private func setupAppereance() {
//        tableView.rowHeight = 300
    }

    func configureTableView() {
        tableView.register(CustomCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.label.text = text[indexPath.row]
        cell.image.image = photo
        return cell
    }
    
}


