//
//  Animation.swift
//  Loading
//
//  Created by Adha Syah Majid on 12/12/23.
//

import SwiftUI

struct Animation: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(
//                        .default
//                        .delay(2.0)
//                        .repeatCount(5)
//                ) {
                    isAnimated.toggle()
//                }
            }
            Spacer()
            RoundedRectangle (cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame (width: isAnimated ? 100 : 300,
                        height: isAnimated ? 100 : 300)
                .rotationEffect (Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(
//                    .default
//                    .repeatCount(5)
//                    spring nanti kamu pelajari lagi, sebenre dipake kelihatan kalo animasinya melebar n mengempis
//                    dia lebih halus jga kalo dipake
                    .spring(),
                    value: isAnimated)
            Spacer()
        }
    }
}

#Preview {
    Animation()
}
