//
//  SignUpButton.swift
//  Money
//
//  Created by Sebastian Cioată on 03.03.2023.
//

import Foundation
import SwiftUI

struct SignUpButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            Text("Sign up")
                .padding()
            Spacer()
            Image(systemName:"arrow.forward")
                .padding()
            configuration.label
        }
        .frame(width: 315, height: 72)
        .foregroundColor(Color(red: 27/255, green: 57/255, blue: 255/255))
        .overlay(RoundedRectangle(cornerRadius: 25)
                    .stroke(Color(red: 27/255, green: 57/255, blue: 255/255), lineWidth: 2)
                )
        .font(.custom("Manrope", size: 20))
        .opacity(configuration.isPressed ? 0.7 : 1)
       
        
    }
}

extension ButtonStyle where Self == SignUpButtonStyle{
    static var signUp: SignUpButtonStyle{.init()}
}

