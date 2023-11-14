//
//  SectionView.swift
//  Effective
//
//  Created by  User on 14.11.2023.
//

import SwiftUI

struct SectionView: View {
    let icon: String
    let text: String
    
    var body: some View {
        VStack (alignment: .center, spacing: 8) {
            ZStack {
                Rectangle()
                    .frame(width: 72, height: 72)
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    .cornerRadius(100)
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 24, height: 24)
            }.foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
            Text(text)
                .font(Font.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
        }
    }
}
