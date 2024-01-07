//
//  ContentView.swift
//  Loading
//
//  Created by Adha Syah Majid on 09/12/23.
//  How to use if-else and conditional statements in SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack (spacing: 20){
            
            Button("Mulai Loading: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            if isLoading{
                ProgressView()
//                    .progressViewStyle(.circular)
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
