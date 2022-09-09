//
//  CardModel.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct Card: Hashable, Identifiable {
    var id = UUID()
    let image: String
    let title: String
    let description: String
    
    static let cardExample = Card(image: "ace_of_hearts", title: "Решала", description: "Ты решаешь, кому пить. Укажи пальцем на счастливчика.")
    static let cardsExample = [Card](repeating: cardExample, count: 4)
}
