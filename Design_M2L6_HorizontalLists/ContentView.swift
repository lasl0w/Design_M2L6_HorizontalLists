//
//  ContentView.swift
//  Design_M2L6_HorizontalLists
//
//  Created by tom montgomery on 10/15/23.
//

import SwiftUI

struct ContentView: View {
    
    let items = ["shovel", "axe", "rake", "spade", "wheelbarrow", "hose", "bucket", "hammer", "speed square", "chalk line"]
    
    var body: some View {
        
        /*
         // METHOD 1 - TabView as a horizontal list
         TabView {
         ForEach(items, id: \.self) { item in
         Text(item)
         }
         }
         // make it page via swipe
         .tabViewStyle(PageTabViewStyle())
         // show dots
         .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
         */
        
        // METHOD 2 - LazyHgrid with a single row
        // allows for smooth scrolling, instead of snapback (tabview)
        let row = GridItem(.fixed(50), spacing: 5, alignment: .center)
        // Must set the scrollview
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [row], content: {
                
                ForEach(items, id: \.self) { item in
                    Text(item)
                    // IMAGINE - if each Text(item) were a tappable historical card with a tiny path/line seperator
                }
            })
        }

    }
}

#Preview {
    ContentView()
}
