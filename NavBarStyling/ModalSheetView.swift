//
//  ModalSheetView.swift
//  NavBarStyling
//
//  Created by Stewart Lynch on 2021-03-23.
//

import SwiftUI

struct ModalSheetView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ZStack {
                Color(.orange)
                    .ignoresSafeArea()
                Text("Modal Sheet View!")
            }
                .navigationTitle("Modal Sheet")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "x.circle.fill")
                        .font(.title2)
                })
        }
    }
}

struct ModalSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ModalSheetView()
    }
}
