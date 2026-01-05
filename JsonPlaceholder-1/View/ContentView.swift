//
//  ContentView.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 30.12.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var fetcherViewModel = FetcherViewModel()

    var body: some View {
        
        if fetcherViewModel.isLoading {
            LoadingView()
        } else if fetcherViewModel.errorMessage != nil {
            ErrorView(fetcherViewModel: fetcherViewModel)
        } else {
            PostListView(posts: fetcherViewModel.posts)
        }
        
    }
}

#Preview {
    ContentView()
}
