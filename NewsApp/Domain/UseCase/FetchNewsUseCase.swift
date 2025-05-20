//
//  FetchNewsUseCase.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import Foundation
import Combine

protocol FetchNewsUseCase { func execute() -> AnyPublisher<[News], Error> }

final class FetchNewsUseCaseImpl: FetchNewsUseCase {
    
    private let repository: FetchNewsRepository
    
    init(repository: FetchNewsRepository) {
        self.repository = repository
    }
    
    func execute() -> AnyPublisher<[News], any Error> {
        repository.fetchNews()
    }
}
