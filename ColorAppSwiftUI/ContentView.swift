//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Lera Savchenko on 3.10.23.
//

import SwiftUI

struct ContentView: View {
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

                
                    
            }

            Spacer()
        }
 
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
