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
        let width = Rect.width
        let height = Rect.height
        
        let cornerRadius: CGFloat = 30

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: width, y: 0))
        
        path.addArc(center: CGPoint(x: width - cornerRadius, y:height), radius: cornerRadius, startAngle: .degrees(0), endAngle: .degrees(270), clockwise: true)
        
        path.addArc(center: CGPoint(x: cornerRadius, y:height), radius: cornerRadius, startAngle: .degrees(270), endAngle: .degrees(180), clockwise: true)
        
        path.addLine(to: CGPoint(x: 0, y: height))

        path.closeSubpath()

        return path
    }
}

struct InvertedRoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        InvertedRoundedRectangle()
    }
}
