//
//  HomeView.swift
//  MobileProg-iOS
//
//  Created by Raff on 24/11/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Home page")
            }
            .navigationTitle("Home")

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
