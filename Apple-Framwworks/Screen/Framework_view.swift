//
//  Framework_view.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-09.
//

import SwiftUI

struct Framework_view: View {
    @State private var viewType: String = "Grid"
    var body: some View {
        Text("🍎 Frameworks").font(.title)
    
        NavigationStack{
            Picker("chose View", selection: $viewType) {
                ForEach(["Grid", "List"], id: \.self){view in
                    Text(view)
                }
            }.pickerStyle(.segmented)
            switch viewType{
            case "Grid":
                Framework_Grid_View(frameworks: MocData.frameworks)
            case "List":
                Framework_List(frameworks: MocData.frameworks)
            default:
                Text("oop")
                
            }
        }.navigationTitle("")
    }
}

#Preview {
    Framework_view()
}
