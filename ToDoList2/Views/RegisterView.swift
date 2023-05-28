//
//  RegisterView.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var mail = ""
    @State var password = ""

    var body: some View {
        HeaderView(
            title: "Register",
            subtitle: "Idk man",
            angle: -5, color: .purple)
        
        Form{
            TextField("Full Name",
                      text: $name)
            
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("E-Mail",
                      text: $mail)
            
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)
            
            SecureField("Password",
                        text: $password)
            
                .textFieldStyle(DefaultTextFieldStyle())
            FormButtonView(color: .purple){
                
            }
        }
        
        Spacer()
    }
}

struct RegisterView_Previews: PreviewProvider {
    
   
    static var previews: some View {
        RegisterView()
       
    }
}

