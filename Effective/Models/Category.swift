//
//  Category.swift
//  Effective
//
//  Created by  User on 17.11.2023.
//

import Foundation

struct Category : Identifiable {
    let id = UUID()
    let icon: String
    let text: String
}

extension Category {
    static let sampleData: [Category] =
    [
        Category(icon: "sun", text: "Covid 19"),
        Category(icon: "profile-add", text: "Doctor"),
        Category(icon: "link", text: "Medicine"),
        Category(icon: "hospital", text: "Hospital")
    ]
    
    static let navElement: [Category] =
    [
        Category(icon: "home", text: "Home"),
        Category(icon: "calendar", text: "Calendar"),
        Category(icon: "message", text: "Message"),
        Category(icon: "person", text: "Person")
    ]
}
