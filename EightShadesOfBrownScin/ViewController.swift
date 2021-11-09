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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupAll()
        title = "8 Different Shades Of Brown Skin"
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
        let navBar = navigationController?.navigationBar
       
        let appearance = UINavigationBarAppearance()
        let attrs = [
            NSAttributedString.Key.foregroundColor: UIColor.lightText,
            NSAttributedString.Key.font: UIFont(name: "Helvetica", size: 25)!
        ]
        appearance.backgroundColor = UIColor.systemBrown
        appearance.titleTextAttributes = attrs
        navBar?.standardAppearance = appearance
        navBar?.scrollEdgeAppearance = appearance
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
        let card = SkinColors.getPerson()
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.label.text = card[indexPath.row].title
        cell.image.image = card[indexPath.row].photo
      
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let info = SkinColors.getPerson()
        let titleToPass = info[indexPath.row].title
        let textToPass = info[indexPath.row].text

        let infoVC = InfoViewController()
        infoVC.label.text = titleToPass
        infoVC.info.text = textToPass
        navigationController?.pushViewController(infoVC, animated: true)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}




