//
//  ContentView.swift
//  SwiftUI-Yamaha
//
//  Created by Josh Zhuchenko on 4/6/23.
//

import SwiftUI
import SwiftUICharts

struct HomePageView: View {
    var body: some View {
        NavigationView{
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.cyan, .black]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Welcome to Yamaha")
                    .font(.system(size: 32, weight: .semibold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 50) {
                    Image(systemName: "atom")
                        .renderingMode(.original)
                        .resizable()
                        .foregroundColor(Color.black)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("Shape Your Timeline")
                        .font(.system(size: 79, weight: .semibold, design: .serif))
                        .frame(alignment: .center)
                        .foregroundColor(.white)
                }
                Spacer()
                //navigation to next page
                NavigationLink(destination: DescriptionView(), label: {
                    Text("Start Rating Now")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 32, weight: .semibold, design: .serif))
                        .cornerRadius(20)
                })
            }
                }
                }
            }
        }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomePageView()
        }
    }
