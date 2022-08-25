//
//  textFields.swift
//  shapes
//
//  Created by Natan Gluszko on 20/07/2022.
//

import SwiftUI

struct textFields: View {
    
    @State var textInput = ""
    @State var numberInput = ""
    
    var body: some View {
        
        VStack {
            HStack {
                Text("First Name")
                TextField("...",
                          text: $textInput)
            }
            HStack {
                Text("Age")
                TextField("...",
                          text: $numberInput)
            }
        }
        .padding()
    }
    
}

struct textFields_Previews: PreviewProvider {
    static var previews: some View {
        textFields()
    }
}
