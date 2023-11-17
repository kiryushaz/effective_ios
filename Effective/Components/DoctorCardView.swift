//
//  DoctorCardView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct DoctorCardView: View {
    let doctor: Doctor
    
    var body: some View {
        VStack (alignment: .center, spacing: AppTheme.Spacing.medium) {
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
                        .fontWeight(.bold)
                    Text(doctor.title)
                        .font(AppTheme.Fonts.poppins_regular_12)
                        .foregroundColor(AppTheme.Colors.grayTextColor)
                }
                Spacer()
                HStack (spacing: AppTheme.Spacing.tiny) {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: AppTheme.Values.imgSize16,
                               height: AppTheme.Values.imgSize16)
                    Text(doctor.distance)
                        .font(AppTheme.Fonts.poppins_regular_14)
                }.foregroundColor(AppTheme.Colors.grayTextColor)
            }
            .padding(AppTheme.Padding.none)
            .frame(maxWidth: .infinity, alignment: .center)
            Divider().background(.white)
            HStack (alignment: .top, spacing: AppTheme.Spacing.huge) {
                HStack (spacing: AppTheme.Spacing.tiny) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: AppTheme.Values.imgSize16,
                               height: AppTheme.Values.imgSize16)
                    Text(doctor.rating)
                        .font(AppTheme.Fonts.poppins_regular_12)
                }.foregroundColor(AppTheme.Colors.secondaryColor)
                HStack (spacing: AppTheme.Spacing.tiny) {
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: AppTheme.Values.imgSize16,
                               height: AppTheme.Values.imgSize16)
                    Text("open-at \(doctor.time)".localized)
                        .font(AppTheme.Fonts.poppins_regular_12)
                }.foregroundColor(AppTheme.Colors.primaryColor)
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(.horizontal, AppTheme.Padding.medium)
        .padding(.vertical, AppTheme.Padding.large)
        .background(.white)
        .cornerRadius(AppTheme.Values.imgCornerRadius)
        .shadow(color: AppTheme.Colors.shadowColor,
                radius: AppTheme.Values.shadowRadius, x: 2, y: 12)
    }
}
