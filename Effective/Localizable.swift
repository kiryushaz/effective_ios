//
//  Localizable.swift
//  Effective
//
//  Created by  User on 18.11.2023.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
