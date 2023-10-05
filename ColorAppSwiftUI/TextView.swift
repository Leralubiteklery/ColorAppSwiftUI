//
//  TextView.swift
//  ColorAppSwiftUI
//
//  Created by Lera Savchenko on 5.10.23.
//

import SwiftUI

struct TextView: View {
    
    let value: Double
    
    var body: some View {
        Text(value.formatted())
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            TextView(value: 100)
        }
    }
}
