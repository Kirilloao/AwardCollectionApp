//
//  GradientRectangles.swift
//  AwardCollectionApp
//
//  Created by Kirill Taraturin on 31.08.2023.
//

import SwiftUI

struct GradientRectangles: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            ZStack {
                ForEach(0..<3) { interation in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                colors: [.green, .blue],
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0)
                            )
                        )
                        .frame(width: width * 0.7, height: height * 0.7)
                        .rotationEffect(.degrees(Double(interation * 60)))
                }
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .scaleEffect(0.7)
            }
        }
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles()
            .frame(width: 200, height: 200)
    }
}
