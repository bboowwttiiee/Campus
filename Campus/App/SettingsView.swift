//
//  SettingsView.swift
//  Campus
//
//  Created by bowtie on 22.04.2022.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Campus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("SettingsIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Когда-то мы с друзьями не нашли колоду карт и пришлось рисовать карты на газете и вырезать их оттуда вручную. Та ситуация и сподвигла меня создать это приложение.")
                                .font(.footnote)
                        }
                    } //: BOX
                    
                    //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Стартовый экран", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("Если хочешь, ты можешь перезапустить приложение, испозуя переключатель снизу. При активации этого переключателя приложение перезапустится и ты увидишь приветственный экран снова.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Перезапущено".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Перезапустить".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Приложение", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Разработчик", content: "Игорь Букалов")
                        SettingsRowView(name: "Дизайнер", content: "Игорь Букалов")
                        SettingsRowView(name: "Совместимость", content: "iOS 15")
                        SettingsRowView(name: "Сайт", linkLabel: "GitHub", linkDestination: "github.com/bboowwttiiee")
                        SettingsRowView(name: "Telegram", linkLabel: "@bboowwttiiee", linkDestination: "t.me/bboowwttiiee")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Версия приложения", content: "1.0.0")
                    } //: BOX
                    
                } //: VSTACK
                .navigationTitle(Text("Настройки"))
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
