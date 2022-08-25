//
//  SwiftUIView.swift
//  shapes
//
//  Created by Natan Gluszko on 20/07/2022.
//

import SwiftUI

struct SwiftUIView: View {
    
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.purple
    }
    
    var body: some View {
        
        
        TabView() {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
                .tabItem {
                    Image(systemName: "square")
                    Text("pp")
                }
            Text("second")
                .tabItem {
                    Image(systemName: "square")
                    Text("pp")
                }
            Text("fkdsfgjskogkdsfg")
                .tabItem {
                    Image(systemName: "square")
                    Text("pp")
                }
        }
        .accentColor(.green)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
