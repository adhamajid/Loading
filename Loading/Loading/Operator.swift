//
//  Operator.swift
//  Loading
//
//  Created by Adha Syah Majid on 11/12/23.
//

import SwiftUI

struct Operator: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
//            if isStartingState {
//                RoundedRectangle (cornerRadius: 25.0)
//                    .fill(Color.red)
//                    .frame (width: 200, height:100)
//            } else {
//                RoundedRectangle (cornerRadius: 25.0)
//                    .fill(Color.blue)
//                    .frame (width: 200,height: 100)
//            }
            
            RoundedRectangle (cornerRadius: 25.0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame (width: 200, height:100)
            Spacer()
        }
    }
}

#Preview {
    Operator()
}
