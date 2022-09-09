//
//  SettingsLabelView.swift
//  Campus
//
//  Created by bowtie on 22.04.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .font(.system(size: 16, weight: .bold, design: .rounded))
            Spacer()
            Image(systemName: labelImage)
        } //: HSTACK
    }
}

//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Campus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
