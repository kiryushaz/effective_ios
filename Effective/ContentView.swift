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
                VStack (spacing: 32) {
                    HeaderView(name: "James", avatar: "avatar")
                    VStack (spacing: 24) {
                        VStack (spacing: 20) {
                            MainCardView(
                                avatar: "doctor1",
                                name: "Dr. Imran Syahir",
                                title: "General Doctor",
                                date: "Sunday, 12 June",
                                time: "11:00 - 12:00 AM"
                            )
                            HStack (alignment: .center, spacing: 12) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                                    .frame(width: 24, height: 24)
                                Text("Search doctor or health issue")
                                    .font(Font.custom("Poppins-Regular", size: 15))
                                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                            }
                            .padding(16)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                            .cornerRadius(12)
                        }
                        HStack (alignment: .top, spacing: 13) {
                            SectionView(icon: "snowflake", text: "Covid 19")
                            SectionView(icon: "person.fill.badge.plus", text: "Doctor")
                            SectionView(icon: "link", text: "Medicine")
                            SectionView(icon: "stethoscope", text: "Hospital")
                        }
                    }
                    VStack (alignment: .leading, spacing: 16) {
                        Text("Near Doctor")
                            .font(Font.custom("Poppins-SemiBold", size: 16))
                        VStack (alignment: .leading, spacing: 12) {
                            DoctorCardView(
                                avatar: "doctor2",
                                name: "Dr. Joseph Brostito",
                                title: "Dental Specialist",
                                distance: "1.2 KM",
                                avg_rating: "4,8",
                                cnt_ratings: "120",
                                time: "17.00")
                            DoctorCardView(
                                avatar: "doctor1",
                                name: "Dr. Imran Syahir",
                                title: "General Doctor",
                                distance: "1.2 KM",
                                avg_rating: "4,8",
                                cnt_ratings: "120",
                                time: "17.00")
                        }
                    }
                }
                .padding(24)
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
