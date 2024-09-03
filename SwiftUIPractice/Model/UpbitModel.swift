//
//  UpbitModel.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/3/24.
//

import Foundation
typealias Markets = [MarketDTO]

struct MarketDTO: Hashable, Codable {
    let market, koreanName, englishName: String
    
    enum CodingKeys: String, CodingKey {
        case market
        case koreanName = "korean_name"
        case englishName = "english_name"
    }
    func transformModel() -> MarketModle {
        let modle = MarketModle(market: self.market, koreanName: self.koreanName, englishName: self.englishName)
        return modle
    }
}

class MarketModle: Identifiable, ObservableObject {
    let id = UUID()
    let market: String
    let koreanName: String
    let englishName: String
    @Published var isLikes: Bool = false
    init(market: String, koreanName: String, englishName: String) {
        self.market = market
        self.koreanName = koreanName
        self.englishName = englishName
        self.isLikes = false
    }
}
