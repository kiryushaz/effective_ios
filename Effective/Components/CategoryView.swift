//
//  SectionView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct CategoryView: View {
    let category: Category
    
    var body: some View {
        VStack (alignment: .center, spacing: AppTheme.Spacing.tiny) {
            ZStack {
                Rectangle()
                    .frame(width: AppTheme.Values.rectangleSize,
                           height: AppTheme.Values.rectangleSize)
                    .foregroundColor(AppTheme.Colors.white98)
                    .cornerRadius(AppTheme.Values.cornerRadius100)
                Image(systemName: category.icon)
                    .resizable()
                    .frame(width: AppTheme.Values.imgSize24,
                           height: AppTheme.Values.imgSize24)
            }.foregroundColor(AppTheme.Colors.primaryColor)
            Text(category.text)
                .font(AppTheme.Fonts.poppins_regular_15)
                .foregroundColor(AppTheme.Colors.grayTextColor)
        }
    }
}
