//
//  LaunchScreenView.swift
//  Money
//
//  Created by Sebastian Cioată on 03.03.2023.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            WelcomeView()
        }else{
            VStack{
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 96.0, height:83.0)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
    }
}
struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
