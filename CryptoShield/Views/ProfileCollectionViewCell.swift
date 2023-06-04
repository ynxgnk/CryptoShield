//
//  ProfileCollectionViewCell.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 04.06.2023.
//

import UIKit


class ProfileTableViewCell: UITableViewCell {
    static let identifier = "ProfileTableViewCell"
    
//    private let profileProfileCollectionView: UICollectionView = { /* 562 */
//        let layout = UICollectionViewFlowLayout() /* 605 */
//        layout.scrollDirection = .horizontal /* 607 */
//
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.register(ProfileDataCollectionViewCell.self,
//                                forCellWithReuseIdentifier: ProfileDataCollectionViewCell.identifier) /* 563 */
//        return collectionView /* 564 */
//    }()
    
//    private let watchlistCollectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.register(ProfileWatchlistCollectionViewCell.self,
//                                forCellWithReuseIdentifier: ProfileWatchlistCollectionViewCell.identifier)
//        return collectionView
//    }()
    
//    private let watchlistTable: UITableView = { /* 572 */
//        let table = UITableView() /* 573 */
//        table.register(HomeTableViewCell.self,
//                       forCellReuseIdentifier: HomeTableViewCell.identifier) /* 574 */
//        return table /* 575 */
//    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        contentView.addSubview(profileProfileCollectionView) /* 581 */
//        profileProfileCollectionView.backgroundColor = .systemPink /* 582 */
        
//        contentView.addSubview(watchlistTable) /* 583 */
//        watchlistTable.backgroundColor = .systemPink /* 584 */
    }
    
    override func layoutSubviews() { /* 576 */
        super.layoutSubviews() /* 577 */
//        profileProfileCollectionView.frame = CGRect(x: 10, y: 0, width: 500, height: 300) /* 588 */
//        watchlistTable.frame = CGRect(x: 10, y: 180+300, width: 500, height: 500) /* 589 */
//        watchlistTable.frame = contentView.bounds
        
//        addConstraints() /* 590 */
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

