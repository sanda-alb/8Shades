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
    private let image = UIImageView()

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

    }

    private func setupAppereance() {
//        tableView.rowHeight = 20

//        tableView.backgroundColor = UIColor.orange

//        cardView.layer.cornerRadius = 10
//        cardView.backgroundColor = UIColor.white


    }

    func configureTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.imageView?.image = UIImage(systemName: "flame.fill")
        cell.textLabel?.text = "Cell text: \(indexPath.row + 1)"
        return cell
    }
}


