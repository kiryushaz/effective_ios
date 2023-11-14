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
                Text("Hello,")
                    .font(Font.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                Text("Hi, \(name)!")
                    .font(Font.custom("Poppins-Bold", size: 20))
            }
            Spacer()
            Image(avatar)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 56, height: 56)
                .clipped()
        }
    }
}
