//
//  OnboardingView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            OnboardingFirstCardView()
            OnboardingSecondCardView()
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
