//
//  Extensions.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 04.06.2023.
//

import Foundation
//I copied that dont actually know how it works but it was kinda cool
extension Encodable{
    func asDictionary() -> [String: Any]{
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do{
            let json = try JSONSerialization.jsonObject(with: data) as? [String : Any]
            return json ?? [:]
        } catch {
            return[:]
        }
    }
}
