//
//  ProfileTableViewCell.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 04.06.2023.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    static let identifier = "ProfileTableViewCell"
    
    private let nameLabel: UILabel = { /* 565 */
       let label = UILabel() /* 566 */
        label.text = "Name" /* 567 */
        label.font = .systemFont(ofSize: 18, weight: .medium) /* 568 */
        label.numberOfLines = 1 /* 569 */
        return label /* 571 */
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
