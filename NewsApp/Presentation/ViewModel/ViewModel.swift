//
//  ViewModel.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    @Published var news: [News] = []
    
    private let fetchUseCase: FetchNewsUseCase
    private var cancelables = Set<AnyCancellable>()
    
    init(fetchUseCase: FetchNewsUseCase) {
        self.fetchUseCase = fetchUseCase
    }
    
    func getNews() {
        fetchUseCase.execute()
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                default:
                    break
                }
            } receiveValue: { [weak self] news in
                self?.news = news
            }
            .store(in: &cancelables)
    }
    
}
