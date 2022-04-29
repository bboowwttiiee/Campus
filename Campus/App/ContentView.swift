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
    
    private func getCardWidth(_ geometry: GeometryProxy, index: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(cards.count - 1 - index) * 10
        return geometry.size.width - offset
    }
    
    private func getCardOffset(_ geometry: GeometryProxy, index: Int) -> CGFloat {
        return CGFloat(cards.count - 1 - index) * 10
    }
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                ZStack {
                    Rectangle()
                        .fill(Color("OnboardingGradientDark")).ignoresSafeArea()
                    Rectangle()
                        .fill(Color("OnboardingGradientLight")).ignoresSafeArea()
                        .offset(y: 400)
                } //: ZSTACK
                
                GeometryReader { geometry in
                    ZStack {
                        VStack {
                            ZStack {
                                ForEach(Array(self.cards.enumerated()), id: \.element) { index, element in
                                    if index > self.cards.count - 5 {
                                        CardView(card: element, onRemove: { removedCard in
                                            self.cards.removeAll { $0.id == removedCard.id }
                                        })
                                        .animation(.spring(), value: self.cards)
                                        .frame(width: self.getCardWidth(geometry, index: index), height: 370)
                                        .offset(x: 0, y: self.getCardOffset(geometry, index: index))
                                        .padding(.top, 32)
                                    }
                                } //: LOOP
                            } //: ZSTACK
                            .padding(.top)
                            
                            Spacer()
                            
                            cards.count == 37 ? CounterView(cards: "36") : CounterView(cards: "\(cards.count)")
                        } //: VSTACK
                        
                        if self.cards.isEmpty {
                            Button {
                                self.cards = cardsData
                                self.cards += [Card(image: "back", title: "", description: "")]
                            } label: {
                                RestartButtonView()
                            }
                        }
                    } //: ZSTACK
                } //: GEOMETRY
                .padding()
            } //: ZSTACK
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "gearshape")
                    } //: BUTTON
                    .accentColor(.black)
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            } //: TOOLBAR
        } //: NAVIGATION
        .onAppear {
            self.cards += [Card(image: "back", title: "", description: "")]
        }
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
