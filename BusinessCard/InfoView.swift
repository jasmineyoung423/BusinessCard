//
//  InfoView.swift
//  BusinessCard
//
//  Created by Jasmine Young on 6/2/20.
//  Copyright © 2020 Jasmine Young. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let image: String
    let text: String
    let colour: Color
    var body: some View {
        Capsule().fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(HStack {
                Image(systemName: image).foregroundColor(colour)
                Text(text)
            }).padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(image: "phone.fill", text: "Jasmine", colour: Color(red: 1.0, green: 0.75, blue: 0.79)).previewLayout(.sizeThatFits)
    }
}
