//
//  CardGraphic.swift
//  Campus
//
//  Created by bowtie on 22.07.2022.
//

import SwiftUI

struct CardGraphic: View {
    //MARK: - PROPERTIES
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var card: Card
    var style: Style
    var flipAction: () -> () = {}
    
    enum Style {
        case cardFront
        case cardBack
    }
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            GeometryReader { geo in
                let modePrefix: String = (colorScheme == .light ? "w_" : "b_")
                let cardBack: String = (colorScheme == .light ? "white" : "black")
                let firstCard: String = card.image == "back" ? (modePrefix + "back") : cardBack
                
                Image(style == .cardFront ? (modePrefix + card.image) : firstCard)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width, height: geo.size.height)
            }
            
            if style == .cardBack && !card.description.isEmpty {
                VStack {
                    Text(card.title)
                        .font(.system(size: 34, weight: .heavy, design: .rounded))
                        .multilineTextAlignment(.center)
                        .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                    
                    Divider()
                    Text(card.description)
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .multilineTextAlignment(.center)
                }
                .foregroundColor(Color("AppDark"))
                .padding(.vertical, 30)
                .padding(.horizontal, 30)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .onTapGesture(perform: flipAction)
    }
}

//MARK: - PREVIEW
struct CardGraphic_Previews: PreviewProvider {
    static var card: Card = .cardExample
    
    static var previews: some View {
        Group {
            CardGraphic(card: card, style: .cardFront)
            CardGraphic(card: card, style: .cardBack)
        }
    }
}
