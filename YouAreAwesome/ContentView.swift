
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
                
                Button("Show Message") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    
                    messageString = (messageString == message1 ? message2 : message1)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
