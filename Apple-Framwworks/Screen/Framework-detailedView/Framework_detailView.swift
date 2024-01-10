//
//  Framework_detailView.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-08.
//

import SwiftUI

struct Framework_detailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark").imageScale(.large).frame(width: 44, height: 44).foregroundColor(Color(.label)).padding()
                }
            }
            Spacer()
            Framework_cell(framework: framework)
            Text(framework.description).font(.body).padding()
            Spacer()
            Button {
                print("yay")
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }.buttonStyle(.borderedProminent).tint(.red)
        }
    }
}
