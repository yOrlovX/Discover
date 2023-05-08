//
//  ForgotPasswordView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 08.05.2023.
//

import SwiftUI

struct ForgotPasswordView: View {
  @State private var email: String = ""
  
    var body: some View {
      VStack(alignment: .leading, spacing: 20) {
        Image("logo")
        
        Text("Forget password")
          .font(.system(size: 18, weight: .semibold))
        
        Text("Enter your email or phone we will send the verification code to reset your password")
          .font(.system(size: 12, weight: .regular))
          .opacity(0.6)
        
        TextField("jonhn.ux@gmail.com", text: $email)
          .padding()
          .overlay(
            RoundedRectangle(cornerRadius: 15)
              .stroke(.gray.opacity(0.6), lineWidth: 2)
          )
        
        Text("Reset with phone number")
          .foregroundColor(.blue)
          .font(.system(size: 10, weight: .regular))
        
        Button(action: {}) {
          Text("Request code")
            .modifier(PrimaryLoginButton())
        }
      }
      .padding(.horizontal, 26)
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
