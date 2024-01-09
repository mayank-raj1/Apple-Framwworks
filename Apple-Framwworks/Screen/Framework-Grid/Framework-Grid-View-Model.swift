//
//  Framework-Grid-View-Model.swift
//  Apple-Framwworks
//
//  Created by Mayank Raj on 2024-01-08.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
