//
//  SettingsRowView.swift
//  Campus
//
//  Created by bowtie on 22.04.2022.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                    .foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            } //: HSTACK
        } //: VSTACK
    }
}

//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Сайт", content: "GitHub", linkDestination: "github.com/bboowwttiiee")
            .padding()
    }
}
