//
//  LoginView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 08.05.2023.
//

import SwiftUI

struct LoginView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  
    var body: some View {
      VStack(spacing: 30) {
        logoContainer
        textFieldsContainer
        buttonsContainer
      }
    }
}

extension LoginView {
  private var logoContainer: some View {
    VStack {
      Image("logo")
        .resizable()
        .scaledToFit()
        .frame(width: 100, height: 100)
      
      Text("Welcome to Discover")
        .font(.system(size: 22, weight: .semibold))
      Text("Please choose your login option below")
        .font(.system(size: 12, weight: .regular))
        .opacity(0.8)
    }
  }
  
  private var textFieldsContainer: some View {
    VStack(alignment: .leading, spacing: 14) {
      Text("Email")
        .font(.system(size: 12, weight: .regular))
        .opacity(0.6)
      TextField("Enter your  email address", text: $email)
        .padding()
        .overlay(
          RoundedRectangle(cornerRadius: 15)
            .stroke(.gray.opacity(0.6), lineWidth: 2)
        )
      Text("Password")
        .font(.system(size: 12, weight: .regular))
        .opacity(0.6)
      TextField("Enter your  email password", text: $password)
        .padding()
        .overlay(
          RoundedRectangle(cornerRadius: 15)
            .stroke(.gray.opacity(0.6), lineWidth: 2)
        )
      HStack {
        Spacer()
        Button(action: {}) {
          Text("Forgot password?")
            .font(.system(size: 12, weight: .regular))
        }
      }
    }
    .padding(.horizontal, 26)
  }
  
  private var buttonsContainer: some View {
    VStack(spacing: 20) {
      Button(action: {}) {
        Text("Login")
          .modifier(PrimaryBlueButton())
      }
      
      HStack {
        Rectangle()
          .frame(height: 1)
          .frame(maxWidth: 110)
          .opacity(0.1)
        Text("Or login with")
          .font(.system(size: 12, weight: .regular))
          .opacity(0.6)
        
        Rectangle()
          .frame(height: 1)
          .frame(maxWidth: 110)
          .opacity(0.1)
        
      }
      
      HStack(spacing: 8) {
        Button(action: {}) {
          HStack(spacing: 5) {
            Image("Facebook")
              .resizable()
              .scaledToFit()
              .frame(width: 22, height: 22)
            
            Text("Facebook")
              .font(.system(size: 12, weight: .regular))
              .foregroundColor(.black)
          }
          .padding(.horizontal, 10)
          .padding(.vertical, 17)
          
        }
        .overlay(
          RoundedRectangle(cornerRadius: 15)
            .stroke(.gray.opacity(0.6), lineWidth: 1)
        )
        Button(action: {}) {
          HStack(spacing: 5) {
            Image("google")
              .resizable()
              .scaledToFit()
              .frame(width: 22, height: 22)
            
            Text("Google")
              .font(.system(size: 12, weight: .regular))
              .foregroundColor(.black)
          }
          .padding(.horizontal, 10)
          .padding(.vertical, 17)
          
        }
        .overlay(
          RoundedRectangle(cornerRadius: 15)
            .stroke(.gray.opacity(0.6), lineWidth: 1)
        )
        Button(action: {}) {
          HStack(spacing: 5) {
            Image("apple")
              .resizable()
              .scaledToFit()
              .frame(width: 22, height: 22)
            
            Text("Apple")
              .font(.system(size: 12, weight: .regular))
              .foregroundColor(.black)
          }
          .padding(.horizontal, 10)
          .padding(.vertical, 17)
          
        }
        .overlay(
          RoundedRectangle(cornerRadius: 15)
            .stroke(.gray.opacity(0.6), lineWidth: 1)
        )
       
      }
      HStack {
        Text("Doesn’t have account on dicover?")
          .font(.system(size: 10, weight: .regular))
          .opacity(0.6)
        
        Text("Create Account")
          .font(.system(size: 10, weight: .semibold))
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
