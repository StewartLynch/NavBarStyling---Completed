//
//  SecondView.swift
//  NavBarStyling
//
//  Created by Stewart Lynch on 2021-03-21.
//

import SwiftUI

struct PushedNavigationView: View {
    var body: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea()
            Text("View Pushed on Navigation Stack!")
        }
            .navigationTitle("Pushed View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PushedNavigationView()
                .navigationTitle("Pushed View")
        }
    }
}
