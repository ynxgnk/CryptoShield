//
//  ProfileViewController.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 04.06.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private let profileTable: UITableView = { /* 562 */
        let table = UITableView()
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cell") /* 563 */
        return table /* 564 */
    }()
    
    Fixed bugs with cryptoAPI, added another link to API and fixed number ofSections,470-476
    
    private let watchlistTable: UITableView = { /* 572 */
       let table = UITableView() /* 573 */
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cell") /* 574 */
        return table /* 575 */
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground /* 580 */
        view.addSubview(profileTable) /* 581 */
        profileTable.backgroundColor = .red /* 582 */
        view.addSubview(watchlistTable) /* 583 */
        watchlistTable.backgroundColor = .orange /* 584 */
        view.addSubview(nameLabel) /* 585 */
        nameLabel.backgroundColor = .systemGreen /* 586 */
    }
    
    override func viewDidLayoutSubviews() { /* 576 */
        super.viewDidLayoutSubviews() /* 577 */
        addConstraints() /* 590 */
        
    }
    
    private func addConstraints() { /* 587 */
        NSLayoutConstraint.activate([ /* 588 */
            watchlistTable.topAnchor.constraint(equalTo: view.topAnchor), /* 589 */
            watchlistTable.bottomAnchor.constraint(equalTo: view.bottomAnchor), /* 589 */
            watchlistTable.leadingAnchor.constraint(equalTo: view.leadingAnchor), /* 589 */
            watchlistTable.trailingAnchor.constraint(equalTo: view.trailingAnchor), /* 589 */
                                    ])
    }
    
    
    
   
}
