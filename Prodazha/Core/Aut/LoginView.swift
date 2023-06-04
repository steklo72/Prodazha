//
//  LoginView.swift
//  Prodazha
//
//  Created by Fedotov Aleksandr on 01.06.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                // Image
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.vertical,32)
                // form fields
                VStack(spacing: 24) {
                    InputView(text: $email, title: "Email", placeholder: "Введите имейл")
                        .autocapitalization(.none)
                    InputView(text: $password, title: "Password", placeholder: "123456", isSecuredField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // sign in button
                Button {
                    print("Log user in")
                } label: {
                    HStack{
                        Text("Sing in")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                

                Spacer()
                
                // sign up button
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Dont have a acconut?")
                        Text("Sign up")
                            .fontWeight(.bold
                            )
                            .font(.system(size: 14))
                    }
                }

                
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
