//
//  ContentView.swift
//  NavBarStyling
//
//  Created by Stewart Lynch on 2021-03-21.
//

import SwiftUI

struct ContentView: View {
    @State private var showNavView = false
    @State private var showModalView = false
   
    var body: some View {
        NavigationView {
            ZStack {
                Color(.orange)
                    .ignoresSafeArea()
                ScrollView {
                    NavigationLink(
                        destination: PushedNavigationView(),
                        isActive: $showNavView) {
                        Button("Show Second View")  {
                            showNavView = true
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).fill(Color(.label)))
                        .foregroundColor(Color(.systemBackground))
                    }
                    .padding(.top)
                    Text(Sample.veryLongText)
                        .padding()
                }
                .navigationTitle("Nav Bar Appearance")
                .navigationBarItems(trailing: Button {
                    showModalView = true
                } label: {
                    Image(systemName: "questionmark.circle.fill").font(.title2)
                    
                })
                .sheet(isPresented: $showModalView) {
                    ModalSheetView()
            }
            }
        }
        .navigationAppearance(backgroundColor: .orange, foregroundColor: .systemBackground, tintColor: .systemBackground, hideSeparator: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

