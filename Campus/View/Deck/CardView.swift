//
//  CardView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    var card: Card
    @State private var visibleSide = FlipViewSide.front
    @State private var translation: CGSize = .zero
    var onRemove: (_ card: Card) -> ()
    var thresholdPercentage: CGFloat = 0.5
    
    private func getGesturePercentage(_ geometry: GeometryProxy, from gesture: DragGesture.Value) -> CGFloat {
        gesture.translation.width / geometry.size.width
    }
    
    //MARK: - BODY
    var body: some View {
        GeometryReader { geo in
            FlipView(visibleSide: visibleSide) {
                CardGraphic(card: card, style: .cardFront, flipAction: flipCard)
            } back: {
                CardGraphic(card: card, style: .cardBack, flipAction: flipCard)
            }
            .animation(.spring(response: 0.35, dampingFraction: 0.7), value: visibleSide)
            .animation(.interactiveSpring(), value: translation)
            .offset(x: translation.width)
            .rotationEffect(.degrees(Double(translation.width / geo.size.width) * 25), anchor: .bottom)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        translation = value.translation
                    })
                    .onEnded({ value in
                        if abs(getGesturePercentage(geo, from: value)) > thresholdPercentage {
                            onRemove(card)
                        } else {
                            translation = .zero
                        }
                    })
            )
        } //: GEO
    }
    
    func flipCard() {
        visibleSide.toggle()
    }
}

//MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var card: Card = .cardExample
    
    static var previews: some View {
        CardView(card: card, onRemove: { card in
            // do nothing
        })
    }
}
