//
//  ItemDetailView.swift
//  Tod2.0
//
//  Created by Prudhvi Gadiraju on 6/9/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct ItemDetailView : View {
    
    var item: String
    
    var body: some View {
        Text(item)
    }
}

#if DEBUG
struct ItemDetailView_Previews : PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: "Testing 123")
    }
}
#endif
