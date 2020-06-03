//
//  ContentView.swift
//  BusinessCard
//
//  Created by Jasmine Young on 6/2/20.
//  Copyright © 2020 Jasmine Young. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let millenialPink:String = "millenialPink"
    
    var body: some View {
        ZStack {
            Color(millenialPink)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("jasmine")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Jasmine Young")
                .font(.custom("Tangerine-Bold", size: 45
                    ))
                    .fontWeight(.black)
                .foregroundColor(.white)
                Text("Mixed Reality Developer")
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
                Divider()
                InfoView(image: "phone.fill", text: "+1 208 509 3525", colour: Color(millenialPink))
                InfoView(image: "envelope.fill", text: "missjayoung@gmail.com", colour: Color(millenialPink))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


