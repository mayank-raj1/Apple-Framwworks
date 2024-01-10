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
    
    var frameworks: [Framework]
    
    var body: some View {
        
        ScrollView{
            LazyVGrid(columns: columns) {
                ForEach(frameworks, id: \.self) { framework in
                    Framework_cell(framework: framework).onTapGesture {
                        viewModel.selectedFramework = framework
                    }
                }
            }.sheet(isPresented: $viewModel.isShowingDetailView, content: {
                Framework_detailView(framework: viewModel.selectedFramework ?? MocData.sameplFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
        
    }
}

