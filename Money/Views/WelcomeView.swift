//
//  WelcomeView.swift
//  Money
//
//  Created by Sebastian Cioată on 03.03.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        // 3 Level of depth
        ZStack(alignment: .topLeading) {
            
            //Level 1 ( deepest )
            VStack{
                HStack(alignment: .bottom){
                    Image("shapes")
                        .ignoresSafeArea()
                }
                // push the image on the top side of the screen
                Spacer()
            }
            
            //3 Level of depth : Level 2
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Image("Logo-White 1")
                            // .padding()
                        
                        Text("Welcome \nBack")
                            //.padding()
                           // .padding(.horizontal, 20)
                            .foregroundColor(.white)
                            .font(.custom("Manrope", size: 32))
                        Spacer()
                    }
                }
                .padding([.top, .leading], 40)
                Spacer()
            }
            
            //3 Level of depth : Level 3 ( closest to surface )
            VStack{
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Button(action: {
                            print("text")
                        }, label: {
                        })
                        .buttonStyle(SignInButtonStyle())
                        
                        .padding(10)
                        
                        
                        Button(action: {
                            print("text")
                        }, label: {
                            
                        })
                        .buttonStyle(SignUpButtonStyle())
                      
                    }
                    .padding(.bottom, 50)
                    Spacer()
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
