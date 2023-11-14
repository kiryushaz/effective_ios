//
//  MainCardView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct MainCardView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 16) {
            HStack (alignment: .center, spacing: 12) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    Image("doctor1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 48, height: 48)
                .cornerRadius(100)
                VStack (alignment: .leading, spacing: 8) {
                    Text("Dr. Imran Syahir")
                        .font(Font.custom("Poppins-Bold", size: 16))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Text("General Doctor")
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
                    Text("Sunday, 12 June")
                        .font(Font.custom("Poppins-Regular", size: 12))
                }
                HStack (spacing: 8) {
                    Image(systemName: "clock")
                        .frame(width: 16, height: 16)
                    Text("11:00 - 12:00 AM")
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
