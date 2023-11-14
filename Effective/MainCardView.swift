//
//  MainCardView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct MainCardView: View {
    let avatar: String
    let name: String
    let title: String
    let date: String
    let time: String
    
    var body: some View {
        VStack (alignment: .center, spacing: 16) {
            HStack (alignment: .center, spacing: 12) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    Image(avatar)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 48, height: 48)
                .cornerRadius(100)
                VStack (alignment: .leading, spacing: 8) {
                    Text(name)
                        .font(Font.custom("Poppins-Bold", size: 16))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Text(title)
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.white)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
            Divider().background(.white)
            HStack (alignment: .top, spacing: 32) {
                HStack (spacing: 8) {
                    Image(systemName: "calendar")
                        .frame(width: 16, height: 16)
                    Text(date)
                        .font(Font.custom("Poppins-Regular", size: 12))
                }
                HStack (spacing: 8) {
                    Image(systemName: "clock")
                        .frame(width: 16, height: 16)
                    Text(time)
                        .font(Font.custom("Poppins-Regular", size: 12))
                }
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(Color(red: 0.28, green: 0.58, blue: 1))
        .cornerRadius(12)
    }
}
