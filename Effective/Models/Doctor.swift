//
//  Doctor.swift
//  Effective
//
//  Created by  User on 17.11.2023.
//

import SwiftUI

struct Doctor : Identifiable {
    let id = UUID()
    let name: String
    let title: String
    let avatar: String
    let rating: String
    let time: String
    let distance: String
}

extension Doctor {
    static let sampleData: [Doctor] =
    [
        Doctor(
            name: "Dr. Joseph Brostito",
            title: "Dental Specialist",
            avatar: "doctor2",
            rating: "4,8 (120 Reviews)",
            time: "17.00",
            distance: "1.2 KM"),
        Doctor(
            name: "Dr. Imran Syahir",
            title: "General Doctor",
            avatar: "doctor1",
            rating: "4,8 (120 Reviews)",
            time: "17.00",
            distance: "1.2 KM")
    ]
}
