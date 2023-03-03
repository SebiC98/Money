//
//  WelcomeView.swift
//  Money
//
//  Created by Sebastian Cioată on 03.03.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            ZStack (alignment: .topLeading){
                
                HStack(alignment: .bottom){
                    Image("shapes")
                        .ignoresSafeArea()
                        Spacer()
                }
                
                HStack {
                    VStack() {
                        Image("Logo-White 1")
                            .padding()
                            
                        Text("Welcome \nBack")
                            .padding()
                            .padding(.horizontal, 20)
                            .foregroundColor(.white)
                            .font(.custom("Manrope", size: 32))
                            
                    }
                }
                
            }
            Spacer()
            ZStack {
                Button(action: {
                   print("text")
                }, label: {
                    })
                .buttonStyle(SignInButtonStyle())
            
            .padding()
                
               
            }
            
            
            Button(action: {
                print("text")
            }, label: {
               
            })
            .buttonStyle(.signUp)
            
            
           
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
