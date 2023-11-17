//
//  NavigationElementView.swift
//  Effective
//
//  Created by  User on 15.11.2023.
//

import SwiftUI

struct NavigationBarView: View {
    let selected: String
    
    var body: some View {
        HStack (alignment: .center, spacing: AppTheme.Spacing.small) {
            ForEach(Array(Category.navElement.enumerated()), id: \.offset) { idx, nav in
                NavigationElement(category: nav, selected: selected)
                if (idx != Category.navElement.endIndex-1) {
                    Spacer()
                }
            }
        }
        .padding(.horizontal, AppTheme.Padding.huge)
        .padding(.vertical, AppTheme.Padding.medium)
        .frame(maxWidth: .infinity, alignment: .center)
        .foregroundColor(AppTheme.Colors.grayTextColor)
        .background(.white)
    }
}

struct NavigationElement: View {
    let category: Category
    let selected: String
    
    var body: some View {
        if (category.text == selected) {
            HStack (alignment: .center, spacing: AppTheme.Spacing.tiny) {
                Image(systemName: category.icon)
                    .resizable()
                    .frame(width: AppTheme.Values.imgSize24,
                           height: AppTheme.Values.imgSize24)
                Text(category.text)
            }
            .padding(AppTheme.Values.navigationPadding)
            .frame(alignment: .center)
            .foregroundColor(AppTheme.Colors.navElement)
            .background(AppTheme.Colors.navElementBg)
            .cornerRadius(AppTheme.Values.imgCornerRadius)
        } else {
            HStack (alignment: .center, spacing: AppTheme.Spacing.tiny) {
                Image(systemName: category.icon)
                    .resizable()
                    .frame(width: AppTheme.Values.imgSize24,
                           height: AppTheme.Values.imgSize24)
            }
            .padding(AppTheme.Values.navigationPadding)
            .frame(alignment: .center)
        }
    }
}
