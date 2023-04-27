//
//  DemoView.swift
//  SwiftUI-Yamaha
//
//  Created by Josh Zhuchenko on 4/26/23.
//

import Foundation
import SwiftUI
struct DemoView: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView{
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.cyan, .black]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                VStack{
                    TextField("Type something here...", text: $textFieldText)
                        .padding()
                        .background(Color.white.opacity(0.7).cornerRadius(10))
                        .foregroundColor(.red)
                        .font(.headline)
                    
                    Button(action: {
                        if textIsAppropriate() {
                            saveText()
                        }
                    }, label: {
                        Text("Save".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .font(.headline)
                    })
                    
                    ForEach(dataArray, id: \.self) { data in Text(data)
                    }
                    //Spacer()
                }
                .navigationTitle("Rate the day!")
            }
        }
    }
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}
struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}

