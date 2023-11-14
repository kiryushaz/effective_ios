//
//  DoctorCardView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct DoctorCardView: View {
    let avatar: String
    let name: String
    let title: String
    let distance: String
    let avg_rating: String
    let cnt_ratings: String
    let time: String
    
    var body: some View {
        VStack (alignment: .center, spacing: 20) {
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
                        .fontWeight(.bold)
                    Text(title)
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                Spacer()
                HStack (spacing: 8) {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text(distance)
                        .font(Font.custom("Poppins-Regular", size: 14))
                }.foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
            Divider().background(.white)
            HStack (alignment: .top, spacing: 32) {
                HStack (spacing: 8) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text("\(avg_rating) (\(cnt_ratings) Reviews)")
                        .font(Font.custom("Poppins-Regular", size: 12))
                }.foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                HStack (spacing: 8) {
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text("Open at \(time)")
                        .font(Font.custom("Poppins-Regular", size: 12))
                }.foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
    }
}
