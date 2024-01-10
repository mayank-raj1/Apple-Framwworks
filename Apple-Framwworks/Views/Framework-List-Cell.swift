//
//  Framework-List-Cell.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-09.
//

import SwiftUI

struct Framework_List_Cell: View {
    var framework: Framework
    
    var body: some View {
        HStack{
            Image(framework.imageName).resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60)
            Text(framework.name).font(.title2).fontWeight(.semibold).scaledToFit().minimumScaleFactor(0.6)
            Spacer()
        }
    }
}

#Preview {
    Framework_List_Cell(framework: MocData.sameplFramework)
}
