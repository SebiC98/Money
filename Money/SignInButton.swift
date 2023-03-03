//
//  SignInButton.swift
//  Money
//
//  Created by Sebastian Cioată on 03.03.2023.
//

import Foundation
import SwiftUI

struct SignInButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            Text("Sign in")
                .padding()
            Spacer()
            VStack {
                ZStack (alignment: .topTrailing){
                    Image("Ellipse 4")
                        
                    Image("Ellipse 5")
                        
                    
                }
                Image(systemName:"arrow.forward")
                    .padding()
            }
            configuration.label
        }
        .frame(width: 315, height: 72)
        .background(Color(red: 27/255, green: 57/255, blue: 255/255))
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .opacity(configuration.isPressed ? 0.7 : 1)
        .font(.custom("Manrope", size: 20))
    }
}

extension ButtonStyle where Self == SignInButtonStyle{
    static var signIn: SignInButtonStyle{.init()}
}
