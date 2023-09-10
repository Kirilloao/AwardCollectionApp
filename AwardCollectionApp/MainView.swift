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
            Button(action: { buttonAction()}) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                }
            }
            Spacer()
            if awardIsShowing {
                StarView()
                    .frame(width: 250, height: 250)
                    .transition(.leadingSlide)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension AnyTransition {
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
