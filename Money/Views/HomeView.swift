//
//  HomeView.swift
//  Money
//
//  Created by Sebastian Cioată on 03.03.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Image("logo")
            .resizable()
               .frame(width: 96.0, height:83.0)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
