//
//  ProfileView.swift
//  Prodazha
//
//  Created by Fedotov Aleksandr on 04.06.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            Section{
                HStack {
                    Text("MJ")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72,height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4){
                        Text("Michel Jordan")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        Text("example@mail.com")
                            .font(.footnote)
                            .accentColor(.gray)
                        
                    }
                }
                
            }
            Section("General"){
                
            }
            Section("Account"){
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
