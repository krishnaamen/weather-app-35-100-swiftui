//
//  ButtonLabel.swift
//  weather app
//
//  Created by Macbook on 21/01/2023.
//

import SwiftUI
struct ButtonLabel:View{
    var labelText: String
    var bgColor: Color
    var fgColor: Color
    
    var body: some View{
        Text(labelText)
            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(bgColor)
            .foregroundColor(fgColor)
            .font(.system(size: 30, weight: .medium, design: .default))
            .cornerRadius(10)    }
}
