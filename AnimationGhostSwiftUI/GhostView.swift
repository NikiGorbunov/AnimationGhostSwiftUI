//
//  GhostView.swift
//  AnimationGhostSwiftUI
//
//  Created by Никита Горбунов on 05.05.2022.
//

import SwiftUI

struct GhostView: View {
    
    // MARK:- variables
    @State var resetStrokes: Bool = true
    @State var strokeStart: CGFloat = 0
    @State var strokeEnd: CGFloat = 0
    
    // MARK:- views
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            Ghost()
                .stroke(style: StrokeStyle(lineWidth: 2.5, lineCap: .round, lineJoin: .round, miterLimit: 5))
                .foregroundColor(Color.white)
                .opacity(0.35)
            Ghost()
                .trim(from: strokeStart, to: strokeEnd)
                .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: 10))
                .foregroundColor(Color.white)
                .onAppear() {
                    Timer.scheduledTimer(withTimeInterval: 0.35, repeats: true) { timer in
                        if (self.strokeEnd >= 1) {
                            if (self.resetStrokes) {
                                Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                                    self.strokeEnd = 0
                                    self.strokeStart = 0
                                    self.resetStrokes.toggle()
                                }
                                self.resetStrokes = false
                            }
                        }
                        withAnimation(Animation.easeOut(duration: 0.9)) {
                            self.strokeEnd += 0.1
                            self.strokeStart = self.strokeEnd - 0.3
                        }
                    }
                }
            HStack() {
                ZStack {
                    Circle()
                        .fill(.white)
                    .frame(width: 30, height: 30)
                    .offset(x: -10, y: -50)
                    Circle()
                        .frame(width: 10, height: 10)
                        .offset(x: -20, y: -50)
                }
                ZStack {
                    Circle()
                        .fill(.white)
                    .frame(width: 30, height: 30)
                    .offset(x: 10, y: -50)
                    Circle()
                        .frame(width: 10, height: 10)
                        .offset(x: 1, y: -50)
                }
            }
            Circle()
                .trim(from: 0.7, to: 1)
                .stroke(Color.white, lineWidth: 5)
                .frame(width: 130, height: 130)
                .rotationEffect(.init(degrees: 143))
                .offset(x: 0, y: -40)
            
                
        }
    }
}

struct GhostView_Previews: PreviewProvider {
    static var previews: some View {
        GhostView()
    }
}
