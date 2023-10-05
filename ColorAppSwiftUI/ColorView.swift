//
//  ColorView.swift
//  ColorAppSwiftUI
//
//  Created by Lera Savchenko on 5.10.23.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(20)
            .frame(height: 130)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color(.gray)
            ColorView(red: 13, green: 33, blue: 93)
        }
    }
}
