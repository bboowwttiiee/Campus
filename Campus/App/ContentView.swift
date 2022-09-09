//
//  ContentView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    @State var cards: [Card] = cardsData.shuffled()
    
    //MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "gearshape")
                        .font(.title2)
                } //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            } //: HSTACK
            
            Spacer()
            if !cards.isEmpty {
                DeckView(cards: $cards)
                    .shadow(color: .gray.opacity(0.4), radius: 4, y: 1)
                    .padding(.horizontal, -8)
                    .padding(.vertical)
            } else {
                RestartButtonView(action: {
                    cards = cardsData
                    cards += [Card(image: "back", title: "", description: "")]
                })
            }
            
            Spacer()
            CounterView(cardsCount: cards.count > 36 ? "36" : "\(cards.count)")
        } //: VSTACK
        .padding()
        .background(Color("BG").ignoresSafeArea())
        .onAppear {
            cards += [Card(image: "back", title: "", description: "")]
        }
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
