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
                AFButton(name: "Learn More", backGround: Color.red)
            }
        }
    }
}



struct AFButton: View {
    var name: String
    var backGround: Color
    var body: some View {
        Text(name).fontWeight(.semibold).font(.title2).frame(width: 280, height: 50)
            .background(backGround).foregroundColor(.white).cornerRadius(10)
    }
}
