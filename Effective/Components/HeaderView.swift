//
//  HeaderView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct HeaderView: View {
    let name: String
    let avatar: String
    
    var body: some View {
        HStack (alignment: .center) {
            VStack (alignment: .leading) {
                Text("hello-text".localized)
                    .font(AppTheme.Fonts.poppins_regular_16)
                    .foregroundColor(AppTheme.Colors.grayTextColor)
                Text("hi-user \(name)")
                    .font(AppTheme.Fonts.poppins_bold_20)
            }
            Spacer()
            Image(avatar)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: AppTheme.Values.imgAvatarSize,
                       height: AppTheme.Values.imgAvatarSize)
                .clipped()
        }
    }
}
