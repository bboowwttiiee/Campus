//
//  RestartButtonView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct RestartButtonView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Text("Ещё раз?")
                .font(.body)
                .bold()
                .foregroundColor(.black)
                .padding()
        } //: VSTACK
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

//MARK: - PREVIEW
struct RestartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RestartButtonView()
                .previewLayout(.sizeThatFits)
            .padding()
            RestartButtonView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
