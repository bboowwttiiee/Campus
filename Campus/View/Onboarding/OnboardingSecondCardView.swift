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
        VStack(spacing: 20) {
            //: CARD: IMAGE
            Image("OnboardingCards")
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 0.8 : 0.4)
            
            //: CARD: TITLE
            Text("Правила")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
            
            //: CARD: HEADLINE
            Text("Каждый игрок по очереди тянет из колоды карту, на тыльной стороне которой написано правило, которое необходимо выполнить. Чтобы вытянуть карту, смахни ее в сторону. Чтобы увидеть правило, прикоснись к карте.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            
            //: BUTTON: START
            StartButtonView()
                .padding(.bottom, 50)
            
        } //: VSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppDark"))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}

//MARK: - PREVIEW
struct OnboardingSecondCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
