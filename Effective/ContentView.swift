//
//  ContentView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 32) {
            HeaderView(name: "James", avatar: "avatar")
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
            
        }
        .padding(24)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
