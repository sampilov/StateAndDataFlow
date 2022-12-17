//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Сампилов Ильдар on 16.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var userManager: UserManager
    private var digitColor: Color {
        if name.count < 3 {
            return .red
        } else {
            return .green
        }
    }
    
    private var isButtonDisabled: Bool {
        if name.count < 3 {
            return true
        } else {
            return false
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(digitColor)
                    .padding(.trailing, 20)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(isButtonDisabled)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isRegister.toggle()
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
