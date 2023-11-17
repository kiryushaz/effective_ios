//
//  AppTheme.swift
//  Effective
//
//  Created by  User on 17.11.2023.
//

import SwiftUI

struct AppTheme {
    struct Colors {
        static let primaryColor = Color("primaryColor")
        static let secondaryColor = Color("secondaryColor")
        static let shadowColor = Color("shadowColor")
        static let grayTextColor = Color("grayTextColor")
        static let white98 = Color(red: 0.98, green: 0.98, blue: 0.98)
        static let navElement = Color("navElementColor")
        static let navElementBg = Color("navElementBgColor")
    }
    
    struct Fonts {
        static let poppins_regular_12 = Font.custom("Poppins-Regular", size: 12)
        static let poppins_regular_14 = Font.custom("Poppins-Regular", size: 14)
        static let poppins_regular_15 = Font.custom("Poppins-Regular", size: 15)
        static let poppins_regular_16 = Font.custom("Poppins-Regular", size: 16)
        static let popping_semibold_16 = Font.custom("Poppins-SemiBold", size: 16)
        static let poppins_bold_16 = Font.custom("Poppins-Bold", size: 16)
        static let poppins_bold_20 = Font.custom("Poppins-Bold", size: 20)
    }
    
    struct Values {
        static let imgAvatarSize : CGFloat = 56
        static let imgDoctorSize : CGFloat = 48
        static let imgSize16 : CGFloat = 16
        static let imgSize24 : CGFloat = 24
        static let rectangleSize : CGFloat = 72
        
        static let navigationPadding : CGFloat = Padding.short
        static let contentViewPadding : CGFloat = Padding.huge
        static let doctorCardPadding : CGFloat = Padding.large
        static let searchFieldPadding : CGFloat = Padding.medium
        
        static let shadowRadius : CGFloat = 10
        static let imgCornerRadius : CGFloat = 12
        static let cornerRadius100 : CGFloat = 100
    }
    
    struct Padding {
        static let none : CGFloat = 0
        static let short : CGFloat = 12
        static let medium : CGFloat = 16
        static let large : CGFloat = 20
        static let huge: CGFloat = 24
    }
    
    struct Spacing {
        static let tiny : CGFloat = 8
        static let small : CGFloat = 12
        static let cat: CGFloat = 13
        static let short : CGFloat = 16
        static let medium : CGFloat = 20
        static let large : CGFloat = 24
        static let huge : CGFloat = 32
    }
}
