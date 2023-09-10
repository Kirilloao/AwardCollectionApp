//
//  MyView.swift
//  AwardCollectionApp
//
//  Created by Kirill Taraturin on 01.09.2023.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let lineOne = size * 0.05
            let lineTwo = size * 0.15
            let lineThree = size * 0.85
            let lineFour = size * 0.75
            let lineFive = size * 0.25
            let lineSix = size * 0.95
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: lineOne))
                path.addLine(to: CGPoint(x: lineThree, y: lineFour))
                path.addLine(to: CGPoint(x: lineTwo, y: lineFour))
                
                path.move(to: CGPoint(x: middle, y: lineSix))
                path.addLine(to: CGPoint(x: lineTwo, y: lineFive))
                path.addLine(to: CGPoint(x: lineThree, y: lineFive))
            }
            
            .fill(
                RadialGradient(
                    colors: [.indigo, .white],
                    center: .center,
                    startRadius: size * 0.05,
                    endRadius: size * 0.6
                )
            )
            Image(systemName: "wand.and.stars")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(middle / 400)
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
            .frame(width: 250, height: 250)
    }
}
