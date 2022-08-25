//
//  ContentView.swift
//  makingcoolUI
//
//  Created by Natan Gluszko on 16/07/2022.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    let name: String
    let image: String
    let crew: String
}

struct ContentView: View {
    
    var items = [Data]()
    var body: some View {
        
        NavigationView {

            List(items) { data in
                NavigationLink(destination: DataView(data: data)) {
                    Image(data.image)
                        .resizable().frame(width: 100,
                                           height: 100,
                                           alignment: .center)
                        .cornerRadius(100)
                    Text(data.name)
                        .foregroundColor(.pink)
                        .fontWeight(.bold)
                }

            }
            .navigationBarTitle("One Piece Characters")
        }
    }
    
    struct DataView: View {
        
        var data: Data
        
        var body: some View {
            
            VStack {
                Image(data.image)
                    .resizable().frame(width: 200,
                                       height: 200,
                                       alignment: .center)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("\(data.name) is part of the \(data.crew)")
                    .padding(50)
            }
            .navigationTitle(data.name)
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(items: [
                Data(name: "Luffy",
                     image: "luffy",
                     crew: "strawhats"),
                Data(name: "Enel",
                     image: "enel",
                     crew:  "skypiea"),
                Data(name: "Roger",
                     image: "roger",
                     crew: "roger pirates"),
                Data(name: "Nami",
                     image: "nami",
                     crew: "strawhats"),
                Data(name: "Hiyori",
                     image: "hiyori",
                     crew: "wano"),
                Data(name: "Yamato",
                     image: "yamato",
                     crew: "beast pirates"),
                Data(name: "Katakuri",
                     image: "katakuri",
                     crew: "big mom pirates"),
                Data(name: "Ryuma",
                     image: "ryuma",
                     crew: "moria pirates"),
                Data(name: "Kobe",
                     image: "kobe",
                     crew: "marines")
            ])
            .previewInterfaceOrientation(.portrait)
        }
    }
}
