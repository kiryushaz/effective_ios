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
        Category(icon: "snowflake", text: "Covid 19"),
        Category(icon: "person.fill.badge.plus", text: "Doctor"),
        Category(icon: "link", text: "Medicine"),
        Category(icon: "stethoscope", text: "Hospital")
    ]
    
    static let navElement: [Category] =
    [
        Category(icon: "house.fill", text: "Home"),
        Category(icon: "calendar", text: "Calendar"),
        Category(icon: "message", text: "Message"),
        Category(icon: "person", text: "Person")
    ]
}
