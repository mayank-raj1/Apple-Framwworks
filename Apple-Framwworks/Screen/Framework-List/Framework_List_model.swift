//
//  Framework_List_model.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-09.
//

import SwiftUI

final class FrameworkListViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
