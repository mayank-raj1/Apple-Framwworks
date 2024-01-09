//
//  Framework-Grid-View.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-07.
//

import SwiftUI

struct Framework_Grid_View: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: columns) {
                        ForEach(MocData.frameworks, id: \.self) { frm in
                            Framework_cell(framework: frm).onTapGesture {
                                viewModel.selectedFramework = frm
                            }
                        }
                    }
                }.navigationTitle("🍎 Frameworks")
                    .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                        Framework_detailView(framework: viewModel.selectedFramework ?? MocData.sameplFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                    })
            }
    }
}

#Preview {
    Framework_Grid_View()
}


struct Framework_cell: View {
    var framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName).resizable().aspectRatio(contentMode: .fit).frame(width: 90, height: 90)
            Text(framework.name).font(.title2).fontWeight(.semibold).scaledToFit().minimumScaleFactor(0.6)
        }.padding()
    }
}
