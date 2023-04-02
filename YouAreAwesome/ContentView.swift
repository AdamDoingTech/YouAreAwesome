
//  ContentView.swift
//  YouAreAwesome
//  Created by Adam on 3/31/23.

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "When the Genius Bar needs help, they call you, Adam!"
    
    
    var body: some View {
       VStack {
           Spacer()
           
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.orange)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 1)
                .padding()
            
           
            Spacer()
           
           
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
//            .border(.pink, width: 5)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
