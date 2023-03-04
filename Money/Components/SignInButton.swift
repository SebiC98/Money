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
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(red: 27/255, green: 57/255, blue: 255/255))
                .frame(width: 315, height: 72)
            HStack{
                Spacer()
                VStack{
                    ZStack(alignment: .topTrailing){
                        Image("Ellipse 4")
                        Image("Ellipse 5")
                    }
                    Spacer()
                }
            }
                VStack{
                    HStack{
                
                    Text("Sign in")
                        .font(.custom("Manrope", size: 20))
                        .foregroundColor(.white)
                Spacer()
                    Image(systemName:"arrow.forward")
                            .font(.custom("Manrope", size: 20))
                        .foregroundColor(.white)
                }
                    .padding(.horizontal, 20)
            }
                    configuration.label
                }
        .frame(width: 315, height: 72)
        .opacity(configuration.isPressed ? 0.7 : 1)
    }
}

extension ButtonStyle where Self == SignInButtonStyle{
    static var signIn: SignInButtonStyle{.init()}
}
