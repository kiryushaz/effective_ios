//
//  MainCardView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct MainCardView: View {
    let doctor: Doctor
    let date: String
    let time: String
    
    var body: some View {
        VStack (alignment: .center, spacing: AppTheme.Spacing.short) {
            HStack (alignment: .center, spacing: AppTheme.Spacing.small) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    Image(doctor.avatar)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: AppTheme.Values.imgDoctorSize,
                       height: AppTheme.Values.imgDoctorSize)
                .cornerRadius(AppTheme.Values.cornerRadius100)
                VStack (alignment: .leading, spacing: AppTheme.Spacing.tiny) {
                    Text(doctor.name)
                        .font(AppTheme.Fonts.poppins_bold_16)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Text(doctor.title)
                        .font(AppTheme.Fonts.poppins_regular_12)
                        .foregroundColor(.white)
                }
                Spacer()
                Image("arrow-right")
                    .foregroundColor(.white)
                    .onTapGesture {
                        print("Clicked")
                    }
            }
            .padding(AppTheme.Padding.none)
            .frame(maxWidth: .infinity, alignment: .center)
            Divider().background(.white)
            HStack (alignment: .top, spacing: AppTheme.Spacing.huge) {
                HStack (spacing: AppTheme.Spacing.tiny) {
                    Image("calendar")
                        .resizable()
                        .frame(width: AppTheme.Values.imgSize16,
                               height: AppTheme.Values.imgSize16)
                    Text(date)
                        .font(AppTheme.Fonts.poppins_regular_12)
                }
                HStack (spacing: AppTheme.Spacing.tiny) {
                    Image("clock")
                        .resizable()
                        .frame(width: AppTheme.Values.imgSize16,
                               height: AppTheme.Values.imgSize16)
                    Text(time)
                        .font(AppTheme.Fonts.poppins_regular_12)
                }
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(AppTheme.Values.doctorCardPadding)
        .frame(maxWidth: .infinity)
        .background(AppTheme.Colors.primaryColor)
        .cornerRadius(AppTheme.Values.imgCornerRadius)
    }
}
