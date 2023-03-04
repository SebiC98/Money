//
//  LaunchScreenView.swift
//  Money
//
//  Created by Sebastian Cioată on 03.03.2023.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        Image("logo")
            .resizable()
               .frame(width: 96.0, height:83.0)
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
