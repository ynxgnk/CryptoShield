//
//  ProfileViewController.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 04.06.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private let table: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cell")
        return table
    }()
    
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "Name"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.numberOfLines = 1
        label.backgroundColor = .systemPink
        return label
    }()
    
    private let watchlistTable: UITableView = {
       let table = UITableView()
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
