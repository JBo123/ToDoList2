//
//  HeaderView.swift
//  ToDoList2
//
//  Created by Jakub Klucký on 29.05.2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let color: Color
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: angle))
                    .offset(y: -110)
                
                VStack{
                    Text(title)
                    
                        .foregroundColor(Color.white)
                        .font(.system(size: 50))
                    Text(subtitle)
                    
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)

                }.offset(y: -30)
                   
            } .frame(width: UIScreen.main.bounds.width * 1.5,
                     height: 350)
            
                .offset(y: -100)
            Spacer()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "SubTitle", angle: 15, color: .red)
    }
}
