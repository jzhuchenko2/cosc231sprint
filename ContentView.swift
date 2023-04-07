//
//  ContentView.swift
//  SwiftUI-Yamaha
//
//  Created by Josh Zhuchenko on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .cyan]),                    startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Welcome to Yamaha")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 50) {
                    Image(systemName: "atom")
                        .renderingMode(.original)
                        .resizable()
                        .foregroundColor(Color.gray)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("Shape Your Timeline")
                        .font(.system(size: 80, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Start Rating Now")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                    
                }
                }
            }
            
            /*Image(systemName: "globe")
             .imageScale(.large)
             .foregroundColor(.accentColor)
             Text("Placeholder")
             VStack{
             Text("Hello, world!")
             Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
             /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
             }
             }
             .padding()*/
        }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
