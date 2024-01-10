//
//  Framework-List.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-09.
//

import SwiftUI

struct Framework_List: View {
    @StateObject var viewModel = FrameworkListViewModel()
    
    var frameworks: [Framework]
    
    var body: some View {
        
            List{
                ForEach(frameworks, id: \.self) { framework in
                    NavigationLink( destination: Framework_detailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        Framework_List_Cell(framework: framework)
                    }
                }
            }
        
    }
}

#Preview {
    Framework_List(frameworks: MocData.frameworks)
}
