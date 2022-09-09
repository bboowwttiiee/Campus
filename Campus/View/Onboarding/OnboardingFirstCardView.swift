//
//  OnboardingFirstCardView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct OnboardingFirstCardView: View {
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
            Text("Campus")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
            
            //: CARD: HEADLINE
            Text("Эта игра, которую мы с друзьями когда-то называли Общажная, призвана сделать даже из такого тривиального занятия, как распитие алкоголя, веселую игру.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            
            //: BUTTON: START
            HStack(spacing: 8) {
                Text("Листай дальше")
                
                Image(systemName: "arrow.right")
                    .imageScale(.large)
            } //: HSTACK
            .foregroundColor(.white)
            .padding(.bottom, 65)
            
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
struct OnboardingFirstCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
