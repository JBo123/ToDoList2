//
//  FormButtonView.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 01.06.2023.
//

import SwiftUI

struct FormButtonView: View {
    let color: Color
    let action: () -> Void
    var body: some View {
        Button(action: { action()}){
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                Image(systemName: "checkmark").bold()
                    .foregroundColor(.white)
                
            }
        }.foregroundColor(color)
    }
}

struct FormButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FormButtonView(color: .red){
            
        }
    }
}
