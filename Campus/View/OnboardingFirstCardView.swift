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
        ZStack {
            VStack(spacing: 20) {
                //: CARD: IMAGE
                Image("OnboardingCards")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 0.8 : 0.4)
                //: CARD: TITLE
                Text("Campus")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //: CARD: HEADLINE
                Text("Эта игра, которую мы с друзьями когда-то называли Общажная, призвана сделать даже из такого тривиального занятия, как распитие алкоголя, веселую игру.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                Spacer()
                //: BUTTON: START
                HStack(spacing: 8) {
                    Text("Листай дальше")
                    
                    Image(systemName: "arrow.right")
                        .imageScale(.large)
                }
                .foregroundColor(.white)
                .padding(.bottom, 70)
                
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
struct OnboardingFirstCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFirstCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
