//
//  OnboardingView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 08.05.2023.
//

import SwiftUI

enum OnboardingState {
  case first, second, third, main
}

struct OnboardingView: View {
  @State private var onboardingStep: Int = 1
  @State private var currentState: OnboardingState = .first
  
  var body: some View {
    ZStack {
        switch currentState {
        case .first:
          firstOnboardingState
        case .second:
          secondOnboardingState
        case .third:
          thirdOnboardingState
        case .main:
          MainView()
        }
    }
  }
}

extension OnboardingView {
  private var firstOnboardingState: some View {
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
            Button(action: { currentState = .second
              onboardingStep += 1
            }) {
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
  
  private var secondOnboardingState: some View {
    ZStack {
      Image("onboarding2")
        .resizable()
        .scaledToFill()
        .ignoresSafeArea()
      
      VStack {
        VStack(alignment: .leading) {
          Spacer()
          Image("clearLogo")
          VStack(spacing: 50) {
            VStack(alignment: .leading, spacing: 10) {
              Text("Visit tourist attractions")
                .font(.system(size: 30, weight: .semibold))
                .padding(.horizontal, 20)
              Text("Find thousans of tourist destinations ready for you to visit")
                .font(.system(size: 15, weight: .regular))
                .padding(.horizontal, 20)
            }
            Button(action: { currentState = .third
              onboardingStep += 1
            }) {
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
  
  private var thirdOnboardingState: some View {
    ZStack {
      Image("onboarding3")
        .resizable()
        .scaledToFill()
        .ignoresSafeArea()
      VStack {
        VStack(alignment: .leading) {
          Spacer()
          Image("clearLogo")
          VStack(spacing: 50) {
            VStack(alignment: .leading, spacing: 10) {
              Text("Lets explore the world")
                .font(.system(size: 30, weight: .semibold))
                .padding(.horizontal, 20)
              Text("Find thousans of tourist destinations ready for you to visit")
                .font(.system(size: 15, weight: .regular))
                .padding(.horizontal, 20)
            }
            Button(action: { currentState = .main }) {
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
