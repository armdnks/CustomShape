//
//  WaveShapeVer2.swift
//  CustomShape
//
//  Created by armdnks on 12/18/21.
//

import SwiftUI

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

struct WaveShapeVer2_Previews: PreviewProvider {
    static var previews: some View {
        WaveShapeVer2()
    }
}
