//
//  OnboardingSecondCardView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct OnboardingSecondCardView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //: CARD: IMAGE
                Image("OnboardingCards")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 0.8 : 0.4)
                //: CARD: TITLE
                Text("Правила")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //: CARD: HEADLINE
                Text("Каждый игрок по очереди тянет из колоды карту, на тыльной стороне которой написано правило, которое необходимо выполнить. Чтобы вытянуть карту, смахни ее в сторону. Чтобы увидеть правило, прикоснись к карте.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                Spacer()
                //: BUTTON: START
                StartButtonView()
                    .padding(.bottom, 60)
                
            } //: VSTACK
            .padding(.vertical)
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color("OnboardingGradientDark"))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingSecondCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSecondCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
