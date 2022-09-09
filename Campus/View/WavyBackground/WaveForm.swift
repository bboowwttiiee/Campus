//
//  WaveForm.swift
//  Campus
//
//  Created by bowtie on 23.07.2022.
//

import SwiftUI

struct WaveForm: View {
    //MARK: - PROPERTIES
    let universalSize = UIScreen.main.bounds
    @State private var isAnimated = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            getSinWave(interval: universalSize.width)
                .foregroundColor(Color.init(red: 0.3, green: 0.6, blue: 1).opacity(0.4))
                .offset(x: isAnimated ? (-1 * universalSize.width) : 0)
                .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: isAnimated)
            
            getSinWave(interval: (universalSize.width * 1.2), amplitude: 150, baseline: 30 + (universalSize.height / 2))
                .foregroundColor(.black.opacity(0.2))
                .offset(x: isAnimated ? (-1 * (universalSize.width * 1.2)) : 0)
                .animation(.linear(duration: 5).repeatForever(autoreverses: false), value: isAnimated)
            
            getSinWave(interval: (universalSize.width * 3), amplitude: 200, baseline: 70 + (universalSize.height / 2))
                .foregroundColor(.black.opacity(0.2))
                .offset(x: isAnimated ? (-1 * (universalSize.width * 3)) : 0)
                .animation(.linear(duration: 4).repeatForever(autoreverses: false), value: isAnimated)
            
            getSinWave(interval: (universalSize.width * 2), amplitude: 50, baseline: 95 + (universalSize.height / 2))
                .foregroundColor(Color.init(red: 0.3, green: 0.6, blue: 1).opacity(0.4))
                .offset(x: isAnimated ? (-1 * (universalSize.width * 2)) : 0)
                .animation(.linear(duration: 3).repeatForever(autoreverses: false), value: isAnimated)
            
            getSinWave(interval: (universalSize.width * 1.5), amplitude: 65, baseline: 75 + (universalSize.height / 2))
                .foregroundColor(Color.init(red: 0.3, green: 0.6, blue: 1).opacity(0.3))
                .offset(x: isAnimated ? (-1 * (universalSize.width * 1.5)) : 0)
                .animation(.linear(duration: 4).repeatForever(autoreverses: false), value: isAnimated)
        }
        .onAppear {
            self.isAnimated = true
        }
    }
    
    func getSinWave(interval: CGFloat, amplitude: CGFloat = 100, baseline: CGFloat = (UIScreen.main.bounds.height / 2)) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: baseline))
            path.addCurve(
                to: CGPoint(x: interval, y: baseline),
                control1: CGPoint(x: (interval * 0.35), y: (amplitude + baseline)),
                control2: CGPoint(x: (interval * 0.65), y: (-amplitude + baseline))
            )
            path.addCurve(
                to: CGPoint(x: (2 * interval), y: baseline),
                control1: CGPoint(x: (interval * 1.35), y: (amplitude + baseline)),
                control2: CGPoint(x: (interval * 1.65), y: (-amplitude + baseline))
            )
            path.addLine(to: CGPoint(x: (2 * interval), y: universalSize.height))
            path.addLine(to: CGPoint(x: 0, y: universalSize.height))
        }
    }
}

//MARK: - PREVIEW
struct WaveForm_Previews: PreviewProvider {
    static var previews: some View {
        WaveForm()
    }
}
