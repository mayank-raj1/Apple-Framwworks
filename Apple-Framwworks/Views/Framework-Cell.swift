//
//  Framework-Cell.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-09.
//

import SwiftUI

struct Framework_cell: View {
    var framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName).resizable().aspectRatio(contentMode: .fit).frame(width: 90, height: 90)
            Text(framework.name).font(.title2).fontWeight(.semibold).scaledToFit().minimumScaleFactor(0.6)
        }.padding()
    }
}

