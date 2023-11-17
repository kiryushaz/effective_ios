//
//  ContentView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack (spacing: AppTheme.Spacing.huge) {
                    HeaderView(name: "James", avatar: "avatar")
                    VStack (spacing: AppTheme.Spacing.large) {
                        VStack (spacing: AppTheme.Spacing.medium) {
                            MainCardView(
                                doctor: Doctor.sampleData[1],
                                date: "main-date".localized,
                                time: "main-time".localized
                            )
                            HStack (alignment: .center,
                                    spacing: AppTheme.Spacing.small) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(AppTheme.Colors.grayTextColor)
                                    .frame(
                                        width: AppTheme.Values.imgSize24,
                                        height: AppTheme.Values.imgSize24
                                    )
                                Text("search-field-placeholder".localized)
                                    .font(AppTheme.Fonts.poppins_regular_15)
                                    .foregroundColor(AppTheme.Colors.grayTextColor)
                            }
                            .padding(AppTheme.Values.searchFieldPadding)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(AppTheme.Colors.white98)
                            .cornerRadius(AppTheme.Values.imgCornerRadius)
                        }
                        HStack (alignment: .top,
                                spacing: AppTheme.Spacing.cat) {
                            ForEach(Category.sampleData) { cat in
                                CategoryView(category: cat)
                            }
                        }
                    }
                    VStack (alignment: .leading,
                            spacing: AppTheme.Spacing.short) {
                        Text("near-doctor".localized)
                            .font(AppTheme.Fonts.popping_semibold_16)
                        VStack (alignment: .leading,
                                spacing: AppTheme.Spacing.small) {
                            ForEach(Doctor.sampleData) { doctor in
                                DoctorCardView(doctor: doctor)
                            }
                        }
                    }
                }
                .padding(AppTheme.Values.contentViewPadding)
            }
            NavigationBarView(selected: "Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
