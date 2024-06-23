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

struct Article: Decodable {
    let title: String
    let description: String
}
