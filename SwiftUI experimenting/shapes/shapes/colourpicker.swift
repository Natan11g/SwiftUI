//
//  colourpicker.swift
//  shapes
//
//  Created by Natan Gluszko on 20/07/2022.
//

import SwiftUI

struct colourpicker: View {
    
    var colours = ["red", "yellow", "blue"]
    @State private var selectedColour = 0
    
    var body: some View {
        Picker(selection: $selectedColour, label: Text("colours")) {
            ForEach(0..<colours.count) {
                Text(colours[$0])
            }
        }
        .pickerStyle(.segmented)
    }
}

struct colourpicker_Previews: PreviewProvider {
    static var previews: some View {
        colourpicker()
    }
}
