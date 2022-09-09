//
//  SettingsView.swift
//  Campus
//
//  Created by bowtie on 22.04.2022.
//

import SwiftUI

enum Mode {
    case light
    case dark
    case system
}

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @AppStorage("active_icon") var activeAppIcon: String = "AppIcon 3"
    @State private var isMode: Mode = .system
    
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
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                    } //: BOX
                    
                    //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Тема приложения", labelImage: "switch.2")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("Выбранная тема повлияет не только на цвета в приложении, но и на дизайн колоды карт.")
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        HStack(spacing: 20) {
                            VStack {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(isMode == .light ? .pink : .gray)
                                    .frame(width: 70, height: 40)
                                    .onTapGesture {
                                        withAnimation {
                                            isMode = .light
                                        }
                                    }
                                
                                Text("Светлая")
                                    .font(.caption.bold())
                            }
                            VStack {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(isMode == .dark ? .pink : .gray)
                                    .frame(width: 70, height: 40)
                                    .onTapGesture {
                                        withAnimation {
                                            isMode = .dark
                                        }
                                    }
                                
                                Text("Темная")
                                    .font(.caption.bold())
                            }
                            VStack {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(isMode == .system ? .pink : .gray)
                                    .frame(width: 70, height: 40)
                                    .onTapGesture {
                                        withAnimation {
                                            isMode = .system
                                        }
                                    }
                                
                                Text("Системная")
                                    .font(.caption.bold())
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
//                    Picker("Choose icon", selection: $activeAppIcon) {
//                        let customIcons: [String] = ["AppIcon", "AppIcon 1", "AppIcon 2", "AppIcon 3"]
//                        ForEach(customIcons, id: \.self) { icon in
//                            Text(icon)
//                                .tag(icon)
//                        }
//                    }
//                    .onChange(of: activeAppIcon) { newValue in
//                        UIApplication.shared.setAlternateIconName(newValue)
//                    }
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Иконка приложения", labelImage: "rectangle.2.swap")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("Тут и объяснять нечего. Просто выбери иконку, которая тебе больше нравится.")
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        HStack(spacing: 20) {
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                                        .fill(.red.opacity(activeAppIcon == "AppIcon" ? 1 : 0))
                                        .frame(width: 75, height: 75)
                                    
                                    Image("AppIcon1")
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .frame(width: 70, height: 70)
                                        .onTapGesture {
                                            activeAppIcon = "AppIcon"
                                        }
                                }
                                
                                Text("Иконка 1")
                                    .font(.caption.bold())
                            }
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                                        .fill(.red.opacity(activeAppIcon == "AppIcon 1" ? 1 : 0))
                                        .frame(width: 75, height: 75)
                                    
                                    Image("AppIcon2")
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .frame(width: 70, height: 70)
                                        .onTapGesture {
                                            activeAppIcon = "AppIcon 1"
                                        }
                                }
                                
                                Text("Иконка 2")
                                    .font(.caption.bold())
                            }
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                                        .fill(.red.opacity(activeAppIcon == "AppIcon 2" ? 1 : 0))
                                        .frame(width: 75, height: 75)
                                    
                                    Image("AppIcon3")
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .frame(width: 70, height: 70)
                                        .onTapGesture {
                                            activeAppIcon = "AppIcon 2"
                                        }
                                }
                                
                                Text("Иконка 3")
                                    .font(.caption.bold())
                            }
                        }
                        .animation(.linear, value: activeAppIcon)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            Color(UIColor.secondarySystemFill)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    .onChange(of: activeAppIcon) { newValue in
                        UIApplication.shared.setAlternateIconName(newValue)
                    }
                    
                    //MARK: - SECTION 4
                    GroupBox(
                        label: SettingsLabelView(labelText: "Стартовый экран", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("Если хочешь, ты можешь перезапустить приложение, испозуя переключатель снизу. При активации этого переключателя приложение перезапустится и ты увидишь приветственный экран снова.")
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Перезапущено".uppercased())
                                    .font(.system(size: 18, weight: .bold, design: .rounded))
                                    .foregroundColor(.green)
                            } else {
                                Text("Перезапустить".uppercased())
                                    .font(.system(size: 18, weight: .bold, design: .rounded))
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    //MARK: - SECTION 5
                    GroupBox(
                        label: SettingsLabelView(labelText: "Приложение", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Разработчик", content: "Игорь Букалов")
                        SettingsRowView(name: "Дизайнер", content: "Мария Макарова")
                        SettingsRowView(name: "Совместимость", content: "iOS 15")
                        SettingsRowView(name: "Сайт", linkLabel: "GitHub", linkDestination: "github.com/bboowwttiiee")
                        SettingsRowView(name: "Telegram", linkLabel: "@bboowwttiiee", linkDestination: "t.me/bboowwttiiee")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Версия приложения", content: "1.0.0")
                    } //: BOX
                    
                } //: VSTACK
                .navigationTitle("Настройки")
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
//        .environment(\.colorScheme, isMode == .light ? .light : .dark)
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
