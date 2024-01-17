//
//  Student.swift
//  Tes 2
//
//  Created by Geraldy Kumara on 17/01/24.
//

import Foundation

struct Student: Identifiable {
    let id = UUID()
    var name: String
    var profilePicture: String
    var address: String
}

extension Student{
    static let students: [Student] = [
        Student(name: "Abdul", profilePicture: "Image1", address: "Jakarta Selatan"),
        Student(name: "Bayu", profilePicture: "Image2", address: "Jakarta Barat"),
        Student(name: "Cecep", profilePicture: "Image3", address: "Jakarta Utara"),
        Student(name: "Deni", profilePicture: "Image4", address: "Jakarta Selatan"),
        Student(name: "Eko", profilePicture: "Image5", address: "Tangerang Selatan"),
        Student(name: "Fizi", profilePicture: "Image6", address: "Kota Tangerang"),
        Student(name: "Geraldy", profilePicture: "Image7", address: "Cikupa"),
        Student(name: "Handy", profilePicture: "Image8", address: "Teluk Gong"),
        Student(name: "Ivan", profilePicture: "Image9", address: "Jakarta Timur"),
        Student(name: "Juan", profilePicture: "Image10", address: "Bekasi"),
    ]
}
