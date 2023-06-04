//
//  Extensions.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 04.06.2023.
//

import UIKit /* 564 */

//crypto formatter

class Formatters { /* 442 */
    static let cryptoNumberFormatter: NumberFormatter = { /* 442 */
        let formatter = NumberFormatter() /* 443 */
        formatter.locale = .current /* 444 */
        formatter.allowsFloats = true /* 445 */
        formatter.numberStyle = .currency /* 446 */
        formatter.formatterBehavior = .default /* 447 */
        return formatter /* 448 */
    }()
}
