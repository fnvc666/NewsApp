//
//  NewsAppApp.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import SwiftUI

@main
struct NewsAppApp: App {
    var body: some Scene {
        let repository = FetchNewsRepositoryImpl(fetchNewsDataSource: RemoteDataSourceImp())
        let useCase = FetchNewsUseCaseImpl(repository: repository)
        var viewModel = ViewModel(fetchUseCase: useCase)
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
