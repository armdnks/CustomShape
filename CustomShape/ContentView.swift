//
//  ContentView.swift
//  CustomShape
//
//  Created by armdnks on 12/15/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            Color(red: 208/255, green: 239/255, blue: 255/255)
            
            Circle()
                .fill(Color.blue)
                .offset(y: 0)
                .scaleEffect(0.8)
            
            ZStack {
                
                WaveShapeVer4()
                    .fill(Color(red: 42/255, green: 157/255, blue: 244/255))
                
                WaveShapeVer3()
                    .fill(Color(red: 24/255, green: 123/255, blue: 205/255))
                    .offset(y: 30)

                WaveShapeVer2()
                    .fill(Color(red: 17/255, green: 103/255, blue: 177/255))
                    .offset(y: 90)
                
                WaveShapeVer1()
                    .fill(Color(red: 3/255, green: 37/255, blue: 76/255))
                    .offset(y: 120)

            }
            .offset(y: 460)
            
            Text("WAVE")
                .font(.system(size: 50, weight: .light))
                .foregroundColor(.white)
                .kerning(20)
                .offset(x: 8)
            
            
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WaveShapeVer4: Shape {
    
    func path(in Rect: CGRect) -> Path {
        
        var path = Path()
        
        let x = Rect.width
        
        // to adjust bezier path height
        let y: CGFloat = 400
        
        // to adjust the shape height
        let height: CGFloat = 0
        
        path.move(to: CGPoint(x: 0, y: (y / 5) + height))
        
        path.addCurve(to: CGPoint(x: x / 2.2, y: (y / 5) + height),
                      control1: CGPoint(x: x / 10, y: (y / 20) + height),
                      control2: CGPoint(x: x / 3.3, y: (y / 20) + height))
        
        path.addCurve(to: CGPoint(x: x, y: (y / 4) + height),
                      control1: CGPoint(x: x / 1.3, y: (y / 2) + height),
                      control2: CGPoint(x: x / 1.4, y: height))
        
        path.addLine(to: CGPoint(x: x, y: Rect.height))
        path.addLine(to: CGPoint(x: 0, y: Rect.height))
        
        path.closeSubpath()
        
        return path
    }
}

struct WaveShapeVer3: Shape {
    
    func path(in Rect: CGRect) -> Path {
        
        var path = Path()
        
        let x = Rect.width
        
        // to adjust bezier path height
        let y: CGFloat = 400
        
        // to adjust the shape height
        let height: CGFloat = 0
        
        path.move(to: CGPoint(x: 0, y: (y / 6) + height))
        
        path.addCurve(to: CGPoint(x: x / 6.6, y: (y / 6.6) + height),
                      control1: CGPoint(x: x / 20, y: (y / 10) + height),
                      control2: CGPoint(x: x / 10, y: (y / 10) + height))
        
        path.addCurve(to: CGPoint(x: x / 2.5, y: (y / 5) + height),
                      control1: CGPoint(x: x / 4, y: (y / 4) + height),
                      control2: CGPoint(x: x / 4.4, y: (y / 3) + height))
        
        path.addCurve(to: CGPoint(x: x, y: (y / 6.6) + height),
                      control1: CGPoint(x: x / 1.5, y: height),
                      control2: CGPoint(x: x / 1.4, y: (y / 2.8) + height))
        
        path.addLine(to: CGPoint(x: x, y: Rect.height))
        path.addLine(to: CGPoint(x: 0, y: Rect.height))
        
        path.closeSubpath()
        
        return path
    }
}

struct WaveShapeVer2: Shape {
    
    func path(in Rect: CGRect) -> Path {
        
        var path = Path()
        
        let x = Rect.width
        
        // to adjust bezier path height
        let y: CGFloat = 400
        
        // to adjust the shape height
        let height: CGFloat = 0
        
        path.move(to: CGPoint(x: 0, y: (y / 10) + height))
        
        path.addCurve(to: CGPoint(x: x / 2.8, y: (y / 5) + height),
                      control1: CGPoint(x: x / 3.3, y: height),
                      control2: CGPoint(x: x / 5, y: (y / 2.4) + height))
        
        path.addCurve(to: CGPoint(x: x / 1.3, y: (y / 6.6) + height),
                      control1: CGPoint(x: x / 2, y: height),
                      control2: CGPoint(x: x / 1.6, y: height))
        
        path.addCurve(to: CGPoint(x: x, y: (y / 6.6) + height),
                      control1: CGPoint(x: x / 1.2, y: (y / 4.5) + height),
                      control2: CGPoint(x: x / 1.1, y: height))
        
        path.addLine(to: CGPoint(x: x, y: Rect.height))
        path.addLine(to: CGPoint(x: 0, y: Rect.height))
        
        path.closeSubpath()
        
        return path
    }
}

struct WaveShapeVer1: Shape {
    
    func path(in Rect: CGRect) -> Path {
        
        var path = Path()
        
        let x = Rect.width
        
        // to adjust bezier path height
        let y: CGFloat = 400
        
        // to adjust the shape height
        let height: CGFloat = 0
        
        path.move(to: CGPoint(x: 0, y: (y / 5) + height))
        
        path.addCurve(to: CGPoint(x: x / 2.8, y: (y / 5) + height),
                      control1: CGPoint(x: x / 4, y: (y / 20) + height),
                      control2: CGPoint(x: x / 5, y: (y / 2.8) + height))
        
        path.addCurve(to: CGPoint(x: x / 1.4, y: (y / 5) + height),
                      control1: CGPoint(x: x / 2, y: (y / 20) + height),
                      control2: CGPoint(x: x / 1.7, y: height))
        
        path.addCurve(to: CGPoint(x: x, y: (y / 4) + height),
                      control1: CGPoint(x: x / 1.2, y: (y / 2.5) + height),
                      control2: CGPoint(x: x / 1.1, y: (y / 3) + height))
        
        path.addLine(to: CGPoint(x: x, y: Rect.height))
        path.addLine(to: CGPoint(x: 0, y: Rect.height))
        
        path.closeSubpath()
        
        return path
    }
}

