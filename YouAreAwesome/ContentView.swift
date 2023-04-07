
//  ContentView.swift
//  YouAreAwesome
//  Created by Adam on 3/31/23.

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .ignoresSafeArea()
            
            VStack {
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
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
                    let messageArray = ["You Are Great!",
                                        "You Are Awesome!",
                                        "You Are Sweet!",
                                        "You Are Nice!",
                                        "You Are Smart!"]
                    
                    
                    
                    
                    messageString = messageArray[messageNumber]
                    messageNumber = messageNumber + 1
                    if messageNumber == messageArray.count {
                        messageNumber = 0
                    }
                    
                    imageName = "image\(imageNumber)"
                    imageNumber = imageNumber + 1
                    
                    if imageNumber > 8 {
                        imageNumber = 0
                    }
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
