//
//  ContentView.swift
//  Prodazha
//
//  Created by Fedotov Aleksandr on 31.05.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor").ignoresSafeArea()
                VStack(spacing: 20) {
                    // Logo
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                        .padding()

                    // TextFields
                    VStack(spacing: 15) {
                        TextField("Логин", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding(.horizontal)

//                     Login Button
                    NavigationLink(destination: HomeView()) {
                        Text("Log in")
                            .frame(maxWidth: .infinity)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("MainColor"))
                            .cornerRadius(8)
                            .padding(.horizontal)
                    }

                    Spacer()
                }
                .navigationTitle("Log in")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
