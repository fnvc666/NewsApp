//
//  FetchNewsRepository.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import Foundation
import Combine

protocol FetchNewsRepository { func fetchNews() -> AnyPublisher<[News], Error> }
