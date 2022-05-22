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
        path.addCurve(
            to: CGPoint(x: 102.78, y: 300.43),
            control1: CGPoint(x: 229.94, y: 236.9),
            control2: CGPoint(x: 130.21, y: 256.9)
        )
        path.addCurve(
            to: CGPoint(x: 87, y: 353),
            control1: CGPoint(x: 85, y: 329),
            control2: CGPoint(x: 85, y: 333)
        )
        
        path.addCurve(
            to: CGPoint(x: 118.51, y: 600.04),
            control1: CGPoint(x: 90.15, y: 397.06),
            control2: CGPoint(x: 124.69, y: 409.85)
        )
        
        
        
        return path
        
    }
}

struct Ghost_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            Ghost()
                .stroke(style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round, miterLimit: 8))
                .foregroundColor(Color.white)
        }
    }
}
