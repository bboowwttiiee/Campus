//
//  CounterView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct CounterView: View {
    //MARK: - PROPERTIES
    var cards: String
    
    //MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Осталось \(cards) карт")
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                    Text("Всего игральных карт в колоде: 36")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                } //: VSTACK
                Spacer()
            } //: HSTACK
            .padding()
        } //: VSTACK
        .background(.white)
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

//MARK: - PREVIEW
struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CounterView(cards: "36")
                .padding()
            CounterView(cards: "36")
                .preferredColorScheme(.dark)
                .padding()
        }
        
    }
}
