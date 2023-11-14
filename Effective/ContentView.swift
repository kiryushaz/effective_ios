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
            MainCardView()
        }
        .padding(24)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
