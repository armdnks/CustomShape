//
//  InvertedRoundedRectangle.swift
//  CustomShape
//
//  Created by armdnks on 12/15/21.
//

import SwiftUI

struct InvertedRoundedRectangle: Shape {
    
    func path(in Rect: CGRect) -> Path {
        
        var path = Path()
        let x = Rect.width
        let y = Rect.height
        
        let cornerRadius: CGFloat = 30

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: x, y: 0))
        
        path.addArc(center: CGPoint(x: x - cornerRadius, y: y), radius: cornerRadius, startAngle: .degrees(0), endAngle: .degrees(270), clockwise: true)
        
        path.addArc(center: CGPoint(x: cornerRadius, y: y), radius: cornerRadius, startAngle: .degrees(270), endAngle: .degrees(180), clockwise: true)
        
        path.addLine(to: CGPoint(x: 0, y: y))

        path.closeSubpath()

        return path
    }
}

struct InvertedRoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        InvertedRoundedRectangle()
    }
}
