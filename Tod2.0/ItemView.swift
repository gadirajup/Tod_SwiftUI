//
//  ItemView.swift
//  Tod2.0
//
//  Created by Prudhvi Gadiraju on 6/4/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct ItemView : View {
    
    var item: String
    var color: Color
    
    @State var markedDone: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .frame(height: 60)
                .cornerRadius(8)
                .shadow(radius: 8)
            
            HStack {
                Image(systemName:
                        markedDone
                            ? "checkmark.square.fill"
                            : "square"
                    )
                    .font(.system(size: 21))
                    .padding(.leading, 8)
                    .foregroundColor(.white)
                    .tapAction { self.markedDone.toggle()  }
                
                Text(item)
                    .font(.headline)
                    .foregroundColor(Color.white)
                
                Spacer()
            }
        }
    }
}

#if DEBUG
struct ItemView_Previews : PreviewProvider {
    static var previews: some View {
        ItemView(item: "Go to the gym!", color: Color.blue)
    }
}
#endif
