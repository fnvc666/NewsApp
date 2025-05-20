//
//  ContentView.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                ForEach(viewModel.news, id: \.self) { news in
                    VStack {
                        Text(news.title)
                    }
                    Divider()
                }
            }
            .padding()
            .onAppear {
                viewModel.getNews()
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
