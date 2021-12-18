//
//  WaveShapeVer1.swift
//  CustomShape
//
//  Created by armdnks on 12/18/21.
//

import SwiftUI

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

struct WaveShapeVer1_Previews: PreviewProvider {
    static var previews: some View {
        WaveShapeVer1()
    }
}
