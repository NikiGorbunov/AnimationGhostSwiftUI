//
//  Ghost.swift
//  AnimationGhostSwiftUI
//
//  Created by Никита Горбунов on 11.05.2022.
//

import SwiftUI

struct Ghost: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        path.move(to: CGPoint(x: 118.77, y: 600))
        
        
        path.addCurve(
            to: CGPoint(x: 182.77, y: 591.77),
            control1: CGPoint(x: 116, y: 623.46),
            control2: CGPoint(x: 124, y: 540)
        )
        path.addCurve(
            to: CGPoint(x: 300.25, y: 604.32),
            control1: CGPoint(x: 241.53, y: 650),
            control2: CGPoint(x: 232.68, y: 530.73)
        )
        
        path.addCurve(
            to: CGPoint(x: 303, y: 338.47),
            control1: CGPoint(x: 267.46, y: 409.95),
            control2: CGPoint(x: 303, y: 397.16)
        )
        path.addLine(to: CGPoint(x: 303, y: 338.48))
        path.addCurve(
            to: CGPoint(x: 286.56, y: 297.86),
            control1: CGPoint(x: 303, y: 323.32),
            control2: CGPoint(x: 297.11, y: 308.76)
        )
        path.addLine(to: CGPoint(x: 287, y: 297.74))
        path.addCurve(
            to: CGPoint(x: 285.57, y: 256.94),
            control1: CGPoint(x: 291.84, y: 284.47),
            control2: CGPoint(x: 291.33, y: 269.84)
        )
        path.addCurve(
            to: CGPoint(x: 243.77, y: 273.54),
            control1: CGPoint(x: 285.88, y: 257.63),
            control2: CGPoint(x: 273.17, y: 253.87)
        )
        
        // center
        path.addLine(to: CGPoint(x: 243.37, y: 273.43))
        path.addCurve(
            to: CGPoint(x: 168.78, y: 273.43),
            control1: CGPoint(x: 218.94, y: 266.9),
            control2: CGPoint(x: 193.21, y: 266.9)
        )
        
        // leftSide
        path.addCurve(
            to: CGPoint(x: 126.28, y: 257.63),
            control1: CGPoint(x: 138.98, y: 253.87),
            control2: CGPoint(x: 126.28, y: 257.63)
        )
        path.addLine(to: CGPoint(x: 126.2, y: 257.81))
        path.addCurve(
            to: CGPoint(x: 125.49, y: 298.63),
            control1: CGPoint(x: 120.67, y: 270.81),
            control2: CGPoint(x: 120.42, y: 285.45)
        )
        path.addLine(to: CGPoint(x: 125.6, y: 297.86))
        path.addCurve(
            to: CGPoint(x: 109.15, y: 338.48),
            control1: CGPoint(x: 115.05, y: 308.76),
            control2: CGPoint(x: 109.15, y: 323.33)
        )
        
        path.addCurve(
            to: CGPoint(x: 118.51, y: 600.04),
            control1: CGPoint(x: 109.15, y: 397.06),
            control2: CGPoint(x: 144.69, y: 409.85)
        )
//        path.addLine(to: CGPoint(x: 200.48, y: 614.07))
        
//        path.addLine(to: CGPoint(x: 218.38, y: 483.38))
        
        return path
    }
}

struct Ghost_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            Ghost()
                .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round, miterLimit: 8))
                .foregroundColor(Color.white)
        }
    }
}
