//
//  CartRacingView.swift
//  AwardCollectionApp
//
//  Created by Kirill Taraturin on 31.08.2023.
//

import SwiftUI

struct CartRacingView: View {
    
    @State private var start = false
    
    
    var body: some View {
        HStack {
            VStack(spacing: 19) {
                CartView(
                    start: $start,
                    cartTitle: "Default",
                    color: .red,
                    animation: .default
                )
                CartView(
                    start: $start,
                    cartTitle: "EaseOut",
                    color: .green,
                    animation: .easeOut(duration: 0.7)
                )
                CartView(
                    start: $start,
                    cartTitle: "EaseIn",
                    color: .yellow,
                    animation: .easeIn
                )
                CartView(
                    start: $start,
                    cartTitle: "EaseInOut",
                    color: .blue,
                    animation: .easeInOut
                )
                
            }
            Spacer()
        }
        .onTapGesture {
            start.toggle()
        }
    }
}

struct CartRacingView_Previews: PreviewProvider {
    static var previews: some View {
        CartRacingView()
    }
}

struct CartView: View {
    
    @Binding var start: Bool
    
    let cartTitle: String
    let color: Color
    let animation: Animation
    
    
    var body: some View {
        VStack {
            Image(systemName: "cart.fill")
                .font(.title)
                .foregroundColor(color)
                .offset(x: start ? UIScreen.main.bounds.width - 200 : 0)
                .animation(animation, value: start)
            Text(cartTitle)
        }
    }
}
