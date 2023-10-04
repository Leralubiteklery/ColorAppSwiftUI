//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Lera Savchenko on 3.10.23.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack(alignment: .top) {
                Color.indigo
                    .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.gray)
                    .frame(width: 350, height: 170)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
                    .padding()
                ColorSliderView(value: $redSliderValue, sliderColor: .red)
                ColorSliderView(value: $greenSliderValue, sliderColor: .green)
                ColorSliderView(value: $blueSliderValue, sliderColor: .blue)
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

struct ColorSliderView: View {
    @Binding var value: Double
    let sliderColor: Color
    
    var body: some View {
        HStack{
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
        }
    }
}
