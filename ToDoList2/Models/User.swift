//
//  User.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import Foundation

struct User: Codable {
    //it is codable so i could import extention Encodable wich does soma magic
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
