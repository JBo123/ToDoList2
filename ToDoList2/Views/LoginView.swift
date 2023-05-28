//
//  LoginScreenView.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 28.05.2023.
//

import SwiftUI

struct LoginView: View {
 @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView {
            VStack{
                
                HeaderView(
                    title: "toDoX",
                    subtitle: "secret XD",
                    angle: 5, color: .red)
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                Form {
                    
                    TextField( "E-Mail",
                               text: $viewModel.email)
                    
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField( "Do not type your password here",
                                 text: $viewModel.password)
                    
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    FormButtonView(
                        color: .red){
                            viewModel.Login()
                    }
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                }
                .offset(y: -60)
                
                VStack{
                    Text("First Time?")
                 
                        NavigationLink("Click Here",
                                       destination: RegisterView())
                            .foregroundColor(.red)
                }.offset(y: 15)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
