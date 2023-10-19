//
//  Theme.swift
//  PodcastApp
//
//  Created by vb10 on 20.10.2023.
//

import Foundation
import UIKit

struct Theme {
    let themeColor: ThemeColor
    let themeFont: ThemeFont
}

struct ThemeColor {
    let primaryColor: UIColor
    let secondaryColor: UIColor
    let buttonBackgroundColor: UIColor
    let backgroundColor: UIColor
    let textColor: UIColor
}

struct ThemeFont {
    let headlineFont: UIFont
    let bodyFont: UIFont
}

extension Theme {
    static var defaultTheme: Theme {
        return Theme(
            themeColor: ThemeColor(
                primaryColor: UIColor.primary,
                secondaryColor: .gray,
                buttonBackgroundColor: UIColor.primary,
                backgroundColor: .white,
                textColor: .white
            ),
            themeFont: ThemeFont(
                headlineFont: .systemFont(ofSize: FontSize.headline),
                bodyFont: .systemFont(ofSize: FontSize.body)
            )
        )
    }
}
