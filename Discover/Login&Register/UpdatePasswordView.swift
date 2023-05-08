//
//  UpdatePasswordView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 08.05.2023.
//

import SwiftUI

struct UpdatePasswordView: View {
  @State private var updatedPassword: String = ""
  @State private var showPassword: Bool = false
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      Image("logo")
      Text("Create new password")
        .font(.system(size: 18, weight: .semibold))
      Text("Keep your account secure by creating a strong password")
        .font(.system(size: 12, weight: .regular))
        .opacity(0.6)
      
      if showPassword {
        TextField("jonhn.ux@gmail.com", text: $updatedPassword)
          .padding()
          .frame(maxHeight: 52)
          .overlay(
            RoundedRectangle(cornerRadius: 15)
              .stroke(.gray.opacity(0.6), lineWidth: 2)
          )
          .overlay {
            HStack {
              Spacer()
              Image(systemName: "eye.slash")
                .resizable()
                .scaledToFit()
                .frame(width: 19, height: 19)
                .padding()
                .onTapGesture {
                  showPassword.toggle()
                }
            }
          }
      } else {
        SecureField("", text: $updatedPassword)
          .padding()
          .frame(maxHeight: 52)
          .overlay(
            RoundedRectangle(cornerRadius: 15)
              .stroke(.gray.opacity(0.6), lineWidth: 2)
          )
          .overlay {
            HStack {
              Spacer()
              Image(systemName: "eye")
                .resizable()
                .scaledToFit()
                .frame(width: 19, height: 19)
                .padding()
                .onTapGesture {
                  showPassword.toggle()
                }
            }
          }
      }
      
      Text("Your password should be at least contain upper character")
        .font(.system(size: 10, weight: .regular))
        .opacity(0.4)
      
      Button(action: {}) {
        Text("Request code")
          .modifier(PrimaryLoginButton())
      }
    }
    .padding(.horizontal, 26)
  }
}

struct UpdatePasswordView_Previews: PreviewProvider {
  static var previews: some View {
    UpdatePasswordView()
  }
}
