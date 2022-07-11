//
//  ContentView.swift
//  ColorsPicker
//
//  Created by Hossam on 11/07/2022.
//

import SwiftUI

struct ContentView: View {
   
    @State var rotation : CGFloat = .zero
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
           
               
            ForEach(0..<6) { index in
                ColorPlatte()
                    .rotationEffect(.init(degrees: CGFloat(index) * (rotation / 5)) , anchor: .bottom)
//                    .offset(x: CGFloat(-7 * index) , y : CGFloat(3 * index) )
                
                   
                    
                
            }
           
        }
        .animation(SwiftUI.Animation.spring(response: 0.8, dampingFraction: 0.4, blendDuration: 0.8), value: rotation)
        .gesture(gesture)
    }
    
    var gesture : some Gesture {
        DragGesture()
            .onChanged({ value in
                rotation = min(90, ((value.translation.width / 200) * 90))
            })
            .onEnded({ endValue in
                if rotation > 45 {
                    rotation = 90
                }else {
                    rotation = .zero
                }
            })
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
