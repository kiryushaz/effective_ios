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
        HStack (alignment: .center, spacing: 12) {
            NavigationElement(icon: "house.fill", name: "Home", selected: selected)
            Spacer()
            NavigationElement(icon: "calendar", name: "Calendar", selected: selected)
            Spacer()
            NavigationElement(icon: "message", name: "Message", selected: selected)
            Spacer()
            NavigationElement(icon: "person", name: "Person", selected: selected)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .frame(maxWidth: .infinity, alignment: .center)
        .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
        .background(.white)
    }
}

struct NavigationElement: View {
    let icon: String
    let name: String
    let selected: String
    
    var body: some View {
        if (name == selected) {
            HStack (alignment: .center, spacing: 8) {
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                Text(name)
            }
            .padding(12)
            .frame(alignment: .center)
            .foregroundColor(Color(red: 0.39, green: 0.71, blue: 1))
            .background(Color(red: 0.39, green: 0.71, blue: 1).opacity(0.1))
            .cornerRadius(12)
        } else {
            HStack (alignment: .center, spacing: 8) {
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .padding(12)
            .frame(alignment: .center)
        }
    }
}
