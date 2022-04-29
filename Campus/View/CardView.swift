//
//  CardView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    @State private var cardFlipped = true
    
    @State private var translation: CGSize = .zero
    
    private var card: Card
    private var onRemove: (_ card: Card) -> Void
    
    private var thresholdPercentage: CGFloat = 0.5
    
    init(card: Card, onRemove: @escaping (_ card: Card) -> Void) {
        self.card = card
        self.onRemove = onRemove
    }
    
    private func getGesturePercentage(_ geometry: GeometryProxy, from gesture: DragGesture.Value) -> CGFloat {
        gesture.translation.width / geometry.size.width
    }
    
    //MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            VStack {
                if cardFlipped {
                    VStack {
                        Image(self.card.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                    } //: VSTACK
                    .shadow(radius: 5)
                    .animation(.interactiveSpring(), value: translation)
                    .offset(x: self.translation.width, y: 0)
                    .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                self.translation = value.translation
                            })
                            .onEnded({ value in
                                if abs(self.getGesturePercentage(geometry, from: value)) > self.thresholdPercentage {
                                    self.onRemove(self.card)
                                } else {
                                    self.translation = .zero
                                }
                            })
                    )
                } else {
                    ZStack {
                        Image("back")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .shadow(radius: 5)
                        
                        if self.card.description != "" {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.white)
                                .shadow(color: Color.white, radius: 10, x: 0, y: 0)
                                .frame(width: geometry.size.width * 0.7, height: geometry.size.height * 0.95)
                            
                            VStack(spacing: 20) {
                                Text(self.card.title)
                                    .foregroundColor(Color("OnboardingGradientDark"))
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                                
                                Text(self.card.description)
                                    .foregroundColor(Color("OnboardingGradientDark"))
                            }
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: geometry.size.width * 0.7, height: geometry.size.height * 0.9)
                            .rotation3DEffect(Angle(degrees: self.cardFlipped ? 0 : 180), axis: (x: 0, y: 1, z: 0))
                            
                        }
                    } //: ZSTACK
                    .animation(.interactiveSpring(), value: translation)
                    .offset(x: self.translation.width, y: 0)
                    .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                self.translation = value.translation
                            })
                            .onEnded({ value in
                                if abs(self.getGesturePercentage(geometry, from: value)) > self.thresholdPercentage {
                                    self.onRemove(self.card)
                                } else {
                                    self.translation = .zero
                                }
                            })
                    )
                }
            } //: VSTACK
            .rotation3DEffect(Angle(degrees: self.cardFlipped ? 0 : 180), axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
                withAnimation(.easeIn(duration: 0.3)) {
                    self.cardFlipped.toggle()
                }
            }
        } //: GEOMETRY
    }
}

//MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(image: "king_of_spades", title: "Условие", description: "Например, что-то сказать или сделать перед тем или после того, как выпьешь. Если забудешь выполнить условие, выпиваешь. Если забудешь само условие, никто не должен  подсказывать, иначе будет пить вместе с тобой."),
                 onRemove: { _ in
            // do nothing
        })
        .frame(height: 400)
        .padding()
    }
}
