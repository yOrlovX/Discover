//
//  SplashView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 12.05.2023.
//

import SwiftUI

struct SplashView: View {
  
  @State private var animateCircleOffset: CGFloat = 0
  @State private var animateRectangleOffset: CGFloat = 0
  @State private var animateTextOffset: CGFloat = -40
  @State private var opacity: Double = 0
  @State private var angle = Angle(degrees: 0)
  @State private var startAnimation: Bool = false
  
  var body: some View {
    ZStack {
      if startAnimation {
        OnboardingView()
      } else {
        startingAnimationState
      }
    }
    .onAppear {
      DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
        startAnimation = true
      }
    }
  }
}

extension SplashView {
  private var startingAnimationState: some View {
    VStack {
      HStack(spacing: 10) {
        VStack(spacing: 20) {
          Rectangle()
            .foregroundColor(Colors.primaryBlue)
            .frame(width: 25, height: 70)
            .cornerRadius(20)
            .opacity(opacity)
          Circle()
            .foregroundColor(Colors.primaryBlue)
            .frame(width: 25, height: 25)
            .opacity(opacity)
        }
        .rotationEffect(Angle(degrees: 30))
        Rectangle()
          .foregroundColor(Colors.primaryBlue)
          .frame(width: 25, height: 70)
          .cornerRadius(20)
          .rotationEffect(Angle(degrees: 30))
          .offset(y: animateRectangleOffset)
          .opacity(opacity)
        Circle()
          .foregroundColor(Colors.primaryBlue)
          .frame(width: 25, height: 25)
          .offset(y: animateCircleOffset)
          .opacity(opacity)
      }
      .shadow(radius: 20)
      .rotationEffect(angle)
      Text("Discover")
        .font(.system(size: 30, weight: .semibold))
        .opacity(0.6)
        .offset(x: animateTextOffset)
    }
    .onAppear {
      withAnimation(.linear(duration: 1.5)) {
        animateCircleOffset = 40
        animateRectangleOffset = 15
        opacity = 1
        animateTextOffset = 0
      }
    }
  }
}

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView()
  }
}
