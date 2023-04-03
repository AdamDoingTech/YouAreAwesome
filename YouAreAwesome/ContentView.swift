
//  ContentView.swift
//  YouAreAwesome
//  Created by Adam on 3/31/23.

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .ignoresSafeArea()
            
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
                        .padding()
                    
                    Spacer()
                    
                    HStack {
                        // First Button
                        Button("Awesome") {
                            // This is action prefromend when the button is pressed.
                            messageString = "You Are Awesome!"
                            
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Spacer()
                        
                        // Second Button
                        Button("Great") {
                            // This is action prefromend when the button is pressed.
                            messageString = "You Are Great!"
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding()
                    
            }
        }
    } 
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
