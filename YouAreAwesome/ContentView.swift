
//  ContentView.swift
//  YouAreAwesome
//  Created by Adam on 3/31/23.

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.orange)
                .padding()
            
            HStack {
                // First Button
                Button("Awesome") {
                    // This is action prefromend when the button is pressed.
                    messageString = "You Are Awesome!"
                    
                }
                .buttonStyle(.borderedProminent)
                // Second Button
                Button("Great") {
                    // This is action prefromend when the button is pressed.
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
