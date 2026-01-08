//
//  LoadingView.swift
//  JsonPlaceholder-1
//
//  Created by Toni Itkonen on 2.1.2026.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Loading...")
                .font(.largeTitle)
            ProgressView()
            Text("Loading content...")
                .foregroundColor(Color.primary)
        }
        
    }
}

#Preview {
    LoadingView()
}
