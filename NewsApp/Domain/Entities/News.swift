//
//  News.swift
//  NewsApp
//
//  Created by Павел Сивак on 20/05/2025.
//

import Foundation

struct Articles: Codable, Hashable {
    let articles: [News]
}

struct News: Codable, Hashable {
    let title: String
    let description: String?
}
