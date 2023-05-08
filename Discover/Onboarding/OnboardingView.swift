//
//  OnboardingView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 08.05.2023.
//

import SwiftUI

struct OnboardingView: View {
  @State private var onboardingStep: Int = 1
    
  var body: some View {
      ZStack {
        Image("onboarding1")
          .resizable()
          .scaledToFill()
          .ignoresSafeArea()
        
        VStack {
          VStack(alignment: .leading) {
            Spacer()
            Image("clearLogo")
            
            VStack(spacing: 50) {
              
              VStack(alignment: .leading, spacing: 10) {
                Text("Get ready for the next trip")
                  .font(.system(size: 30, weight: .semibold))
                  .padding(.horizontal, 20)
                
                Text("Find thousans of tourist destinations ready for you to visit")
                  .font(.system(size: 15, weight: .regular))
                  .padding(.horizontal, 20)
              }
              
              Button(action: {}) {
                Text("Next")
                  .modifier(PrimaryBlueButton())
              }
              
            }
            .modifier(CardModifier())
            
          }
          OnboardingProgressView(newValue: $onboardingStep)
        }
      }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
      OnboardingView()
    }
}
