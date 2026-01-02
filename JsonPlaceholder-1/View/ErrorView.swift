//
//  ErrorView.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 2.1.2026.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var fetcherViewModel: FetcherViewModel
    
    
    var body: some View {
        VStack {
            Text("Error")
                .font(.largeTitle)
                .foregroundColor(.red)
//            Text(fetcherViewModel.errorMessage ?? "")
            
            Button {
                fetcherViewModel.fetchPosts()
            } label: {
                Text("Try again")
            }
        }
        
    }
}

#Preview {
    ErrorView(fetcherViewModel: FetcherViewModel())
}
