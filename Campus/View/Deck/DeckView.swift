//
//  DeckView.swift
//  Campus
//
//  Created by bowtie on 21.07.2022.
//

import SwiftUI

struct DeckView: View {
    //MARK: - PROPERTIES
    @Binding var cards: [Card]
    
    private func getCardWidth(_ geometry: GeometryProxy, index: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(cards.count - 1 - index) * 10
        return geometry.size.width - offset
    }
    
    private func getCardOffset(_ geometry: GeometryProxy, index: Int) -> CGFloat {
        return CGFloat(cards.count - 1 - index) * 10
    }
    
    //MARK: - BODY
    var body: some View {
        GeometryReader { geo in
            ZStack {
                ForEach(Array(self.cards.enumerated()), id: \.element) { index, element in
                    if index > self.cards.count - 5 {
                        CardView(card: element, onRemove: { cardToRemove in
                            self.cards.removeAll { $0.id == cardToRemove.id }
                        })
                        .aspectRatio(0.75, contentMode: .fit)
                        .animation(.spring(), value: cards)
                        .frame(width: getCardWidth(geo, index: index))
                        .offset(y: getCardOffset(geo, index: index))
                    }
                } //: LOOP
            } //: ZSTACK
        } //: GEO
    }
}

//MARK: - PREVIEW
struct DeckView_Previews: PreviewProvider {
    static var cards = Card.cardsExample
    
    static var previews: some View {
        DeckView(cards: .constant(cards))
            .padding()
    }
}
