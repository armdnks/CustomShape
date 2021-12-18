//
//  WaveShapeVer3.swift
//  CustomShape
//
//  Created by armdnks on 12/18/21.
//

import SwiftUI

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

struct WaveShapeVer3_Previews: PreviewProvider {
    static var previews: some View {
        WaveShapeVer3()
    }
}
