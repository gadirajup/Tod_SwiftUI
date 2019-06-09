//
//  ContentView.swift
//  Tod2.0
//
//  Created by Prudhvi Gadiraju on 6/4/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.

import SwiftUI

struct ContentView : View {
    var items: [String] = [
        "Go to the gym",
        "Get a haircut",
        "Edit the Battry on the sketch file",
        "Finish todo App",
        "Study bindables"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items.identified(by: \.self)) { item in
                    NavigationButton(destination: ItemDetailView(item: item)) {
                        ItemView(item: item, color: Color.blue, markedDone: false)
                    }
                }
            }
            .navigationBarTitle(Text("Tod"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


