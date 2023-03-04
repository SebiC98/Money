//
//  SignInView.swift
//  Money
//
//  Created by Sebastian Cioată on 04.03.2023.
//

import SwiftUI

struct SignInView: View{
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            ZStack (alignment: .topLeading){
                
                HStack(alignment: .bottom){
                    Image("shapes 1")
                        .ignoresSafeArea()
                        Spacer()
                }
                
                HStack {
                    VStack() {
                        Image("Logo-White 1")
                            .padding(.horizontal, -80)
                        
                        Text("Welcome \nBack")
                            .padding()
                            .padding(.horizontal, 40)
                            .foregroundColor(.white)
                            .font(.custom("Manrope", size: 32))
                    }
                }
            }
            Spacer()
            HStack{
                Spacer()
                VStack{
                    
                    Text("Sign in")
                        .font(.custom("Manrope", size: 32))
                        .padding(.horizontal, -150)
                    Text("Email Adress")
                        .padding()
                        .font(.custom("Manrope", size: 20))
                        .foregroundColor(Color(.lightGray))
                        .padding(.horizontal, -165)
                        TextField("Username", text: $username)
                            .padding(.horizontal, 47)
                            .font(.custom("Manrope", size: 20))
                            .foregroundColor(Color(.lightGray))
                        Divider()
                            .frame(width: 320.23)
                            .background(Color(red: 39/255, green: 67/255, blue: 253/255))
                        SecureField("Password", text: $password)
                            .padding(.horizontal, 47)
                            .font(.custom("Manrope", size: 20))
                            .foregroundColor(Color(.lightGray))
                        Divider()
                            .frame(width: 320.23)
                            .background(Color(red: 39/255, green: 67/255, blue: 253/255))
                    }
                Spacer()
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
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
