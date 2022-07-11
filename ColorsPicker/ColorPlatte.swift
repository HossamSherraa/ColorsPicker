//
//  ColorPlatte.swift
//  ColorsPicker
//
//  Created by Hossam on 11/07/2022.
//

import SwiftUI

struct ColorPlatte: View {
    var body: some View {
        VStack {
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
                .foregroundColor(.teal)
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
                .foregroundColor(.brown)
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
                .foregroundColor(.indigo)
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .padding(8)
        .background(content: {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .foregroundStyle(.background)
        })
        .frame(width: 80, height: 200)
    }
}

struct ColorPlatte_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
