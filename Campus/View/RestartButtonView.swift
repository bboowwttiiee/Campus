//
//  RestartButtonView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct RestartButtonView: View {
    //MARK: - PROPERTIES
    var action: () -> ()
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            
            Text("Еще раз?")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .shadow(radius: 5)
                .padding(.bottom, -50)
            
            LottieView(animationName: "mouth-watering")
                .frame(width: 300, height: 300)
                .padding(.bottom, -30)
                .shadow(radius: 5)
            
            Button(action: action, label: {
                VStack {
                    Text("Да!")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                        .padding()
                } //: VSTACK
                .frame(width: 200)
                .background(.white)
                .cornerRadius(12)
                .shadow(radius: 5)
            })
            
            Spacer()
        }
    }
}

//MARK: - PREVIEW
struct RestartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RestartButtonView(action: {})
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
