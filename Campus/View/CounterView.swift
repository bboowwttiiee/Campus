//
//  CounterView.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

struct CounterView: View {
    //MARK: - PROPERTIES
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var cardsCount: String
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            Text("Осталось \(cardsCount) карт")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            Text("Всего игральных карт в колоде: 36")
                .font(.system(size: 16, weight: .bold, design: .rounded))
                .foregroundColor(.gray)
        } //: VSTACK
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(colorScheme == .light ? .white : .black)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.4), radius: 5)
    }
}

//MARK: - PREVIEW
struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(cardsCount: "36")
            .padding()
            .preferredColorScheme(.dark)
    }
}
