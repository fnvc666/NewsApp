//
//  FetchNewsRepositoryImpl.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import Foundation
import Combine

class FetchNewsRepositoryImpl: FetchNewsRepository {
    
    private let fetchNewsDataSource: FetchNewsDataSource
    
    init(fetchNewsDataSource: FetchNewsDataSource) {
        self.fetchNewsDataSource = fetchNewsDataSource
    }
    
    func fetchNews() -> AnyPublisher<[News], any Error> {
        fetchNewsDataSource.getAllNews()
    }
}
