//
//  LoginView.swift
//  LoginPractice
//
//  Created by Raff on 10/11/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    @State private var alertMsg = "Error"
    @State private var loginIsSuccessful = false
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Please login to continue.")
                    .font(.subheadline)
                    .padding(.vertical)
                TextField("Email", text: $email)
                    .padding()
                    .cornerRadius(25.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color.black))
                    .autocapitalization(.none)
                SecureField("Password", text: $password)
                    .padding()
                    .cornerRadius(25.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color.black))
                Button {
                    
                } label: {
                    ZStack {
                        Text("Login")
                            .cornerRadius(25.0)
                            .padding()
                            .padding(.horizontal, 20.0)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.black))
                            .foregroundColor(Color.white)
                    }
                }
                .padding(.top, 25.0)
                Button {
                    loginUser()
                } label: {
                    ZStack {
                        Text("Create an account")
                            .cornerRadius(25.0)
                            .padding()
                            .padding(.horizontal, 20.0)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.black))
                            .foregroundColor(Color.white)
                    }
                }
                .padding(.top, 10.0)
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Error"),
                        message: Text("Invalid credentials. Please try again!"),
                        dismissButton: .default(Text("OK"))
                    )
                }
                NavigationLink(destination: ContentView(), isActive: $loginIsSuccessful) { EmptyView() }
            }
            .padding(50.0)
            .navigationBarHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

