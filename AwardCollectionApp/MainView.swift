//
//  ContentView.swift
//  AwardCollectionApp
//
//  Created by Kirill Taraturin on 31.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: { awardIsShowing.toggle() }) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                        .animation(.default, value: awardIsShowing)
                }
            }
            Spacer()
            GradientRectangles()
                .frame(width: 250, height: 250)
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
