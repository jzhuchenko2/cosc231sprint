//
//  DescriptionView.swift
//  SwiftUI-Yamaha
//
//  Created by Josh Zhuchenko on 4/9/23.
//
import SwiftUICharts
import Foundation
import SwiftUI
struct DescriptionView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.cyan, .black]),
                               startPoint: .topLeading,
                               endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
                VStack (spacing: 50){
                    Text("How to rate")
                        .font(.system(size: 59, weight: .semibold, design: .serif))
                        .foregroundColor(.white)
                    //Spacer()
                    Text("Input your rating of the day & see how your life is going on a timeline graph like below")
                        .font(.system(size: 25, weight: .bold, design: .serif))
                        .frame(maxWidth: 250, alignment: .center)
                        .foregroundColor(.white)
                    
                    LineChartView(data: [2, 4, 10, 7, 12, 18, 25], title: "Life Timeline")
                    
                    HStack(spacing: 0) {
                        Image(systemName: "star.fill")
                            .renderingMode(.original)
                            .resizable()
                            .foregroundColor(Color.black)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Image(systemName: "star.fill")
                            .renderingMode(.original)
                            .resizable()
                            .foregroundColor(Color.black)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Image(systemName: "star.fill")
                            .renderingMode(.original)
                            .resizable()
                            .foregroundColor(Color.black)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Image(systemName: "star.fill")
                            .renderingMode(.original)
                            .resizable()
                            .foregroundColor(Color.black)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Image(systemName: "star.fill")
                            .renderingMode(.original)
                            .resizable()
                            .foregroundColor(Color.black)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                }
            }
        }
    }
}
