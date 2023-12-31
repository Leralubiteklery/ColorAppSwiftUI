//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Lera Savchenko on 3.10.23.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255).rounded()
    @State private var green = Double.random(in: 0...255).rounded()
    @State private var blue = Double.random(in: 0...255).rounded()
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        ZStack() {
            Color.indigo
                .ignoresSafeArea()
                .onTapGesture {
                    isInputActive = false
                }
            VStack (spacing: 40){
                ColorView(red: red, green: green, blue: blue)
                VStack {
                    ColorSliderView(value: $red, color: .red)
                    ColorSliderView(value: $green, color: .green)
                    ColorSliderView(value: $blue, color: .blue)
                }
                .frame(height: 150)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
                Spacer()
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



