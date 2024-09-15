//
//  SplashScreen.swift
//  SwiftSplash
//
//  Created by Tushar Ahmed on 15/9/24.
//

 
import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var logoSize: CGFloat = 0.4
    @State private var opacity: Double = 0.5

    var body: some View {
        if isActive {
            HomeView()
            // Transition to the main content
        } else {
            VStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.yellow)
                    .scaleEffect(logoSize)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.logoSize = 1.0
                            self.opacity = 1.0
                        }
                    }

                Text("ZOOMER")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 20)

                Text("Best Place for Shopping")
                    .font(.title3)
                    .foregroundColor(.black.opacity(0.8))
            }
           
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
