
//  ContentView.swift
//  YouAreAwesome
//  Created by Adam on 3/31/23.

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "When the Genius Bar needs help, they call you, Adam!"
    
    
    var body: some View {
//            Rectangle()
//                .fill(.black)
//            Color("SkyBlue").opacity(0.8)
//                .ignoresSafeArea()
            VStack {
               Text("something here ")
                   .font(.largeTitle)
                   .fontWeight(.black)
               // black here is not a color, but it means the max thickness of the font, such as semi-bold for example, or bold.
                   .foregroundColor(Color("Gold-BC"))
                   .padding()
                   .background(Color("Maroon-BC"))
                   .cornerRadius(15)
               
               Spacer()
               
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.orange)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
    //                .border(.orange, width: 1)
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
