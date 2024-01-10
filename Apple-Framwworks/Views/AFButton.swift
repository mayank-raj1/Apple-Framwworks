//
//  AFButton.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-09.
//

import SwiftUI

struct AFButton: View {
    var name: String
    var backGround: Color
    var body: some View {
        Text(name).fontWeight(.semibold).font(.title2).frame(width: 280, height: 50)
            .background(backGround).foregroundColor(.white).cornerRadius(10)
    }
}


#Preview {
    AFButton(name: "YES", backGround: Color.blue)
}
