//
//  File.swift
//  
//
//  Created by David Andreasson on 2022-12-20.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public struct StandardButton: View {
    @ObservedObject var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        Button {
            viewModel.tapAction()
        } label: {
            Text("standardbutton")
        }
    }
}

@available(iOS 13.0, *)
public final class ViewModel: ObservableObject {
    public let tapAction: () -> Void
    
    init(tapAction: @escaping () -> Void) {
        self.tapAction =  tapAction
    }
}
