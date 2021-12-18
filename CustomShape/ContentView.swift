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
