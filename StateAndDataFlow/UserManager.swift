//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Сампилов Ильдар on 16.12.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
