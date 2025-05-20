//
//  FetchNewsDataSource.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import Foundation
import Combine

protocol FetchNewsDataSource {
    func getAllNews() -> AnyPublisher<[News], Error>
}
