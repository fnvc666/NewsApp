//
//  RemoteDataSourceImp.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import Foundation
import Combine

class RemoteDataSourceImp: FetchNewsDataSource {
    func getAllNews() -> AnyPublisher<[News], Error> {
        let apiKey = ""
        let urlString = "https://newsapi.org/v2/everything?q=tesla&apiKey=\(apiKey)"
        
        guard let url = URL(string: urlString) else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        let dataPublisher = URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: Articles.self, decoder: JSONDecoder())
            .map{ $0.articles }
            .eraseToAnyPublisher()
        
        return dataPublisher
    }
    
    
}
