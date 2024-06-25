//
//  Article.swift
//  RxNewsApp
//
//  Created by joe on 6/23/24.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

extension ArticlesList {
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(apiKey)")!
        return Resource(url: url)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String?
}
