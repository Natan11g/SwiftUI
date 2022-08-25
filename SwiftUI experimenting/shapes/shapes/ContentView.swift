//
//  ContentView.swift
//  shapes
//
//  Created by Natan Gluszko on 16/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack {
            
            Circle()
                .frame(width: 100)
                .foregroundColor(.red)
            
            Circle()
                .frame(width: 80)
                .foregroundColor(.orange)
            
            Circle()
                .frame(width: 60)
                .foregroundColor(.yellow)
            
            Circle()
                .frame(width: 40)
                .foregroundColor(.white)
            
            Ellipse()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [8, 5], dashPhase: 1))
                .frame(width: 120, height: 220)
            
            Ellipse()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [8, 5], dashPhase: 1))
                .frame(width: 220, height: 120)
            
            Circle()
                .stroke()
                .frame(width: 220)
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 3))
                .frame(width: 230, height: 230)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
