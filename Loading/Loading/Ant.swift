//
//  Ant.swift
//  Loading
//
//  Created by Adha Syah Majid on 12/12/23.
//

import SwiftUI

struct Ant: View {
    @State private var offset: CGFloat = 200.0
        
        var body: some View {
            
            Image(systemName: "ant")
                .font(Font.system(size: 100.0))
                .offset(y: offset)
                .shadow(radius: 10.0)
                .onTapGesture { offset -= 100.0 }
                .animation(.easeInOut(duration: 1.0), value: offset)
            
        }
    }

#Preview {
    Ant()
}
