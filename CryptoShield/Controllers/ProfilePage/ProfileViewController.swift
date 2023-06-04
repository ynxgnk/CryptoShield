//
//  ProfileViewController.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 04.06.2023.
//



import UIKit

final class ProfileViewController: UIViewController {
    
    private let profileTableView: UICollectionView = { /* 618 */
        let layout = UICollectionViewFlowLayout() /* 619 */
        layout.scrollDirection = .horizontal /* 620 */
        layout.itemSize = CGSize(width: 500, height: 300) /* 621 */
        let table = UICollectionView(frame: .zero, collectionViewLayout: layout) /* 622 */
        table.register(ProfileDataCollectionViewCell.self,
                       forCellWithReuseIdentifier: ProfileDataCollectionViewCell.identifier) /* 623 */
        return table /* 624 */
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground /* 625 */
        view.addSubview(profileTableView) /* 626 */
        profileTableView.backgroundColor = .red /* 580 */
        
        profileTableView.delegate = self /* 627 */
        profileTableView.dataSource = self /* 628 */
        profileTableView.showsHorizontalScrollIndicator = false /* 629 */
        
    }
    
    override func viewDidLayoutSubviews() { /* 630 */
        super.viewDidLayoutSubviews() /* 631 */
        profileTableView.frame = CGRect(x: 10, y: 50, width: 500, height: 200) /* 588 */
    }
    
    private func addConstraints() { /* 587 */
        
    }
}


extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource { /* 632 */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { /* 633 */
        3 /* 639 */
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { /* 634 */
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileDataCollectionViewCell.identifier, for: indexPath) as?  ProfileDataCollectionViewCell else { /* 635 */
            fatalError() /* 636 */
        }
        return cell /* 637 */
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { /* 638 */
        1
    }
    
    
    
}




