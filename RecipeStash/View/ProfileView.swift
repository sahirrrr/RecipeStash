//
//  ProfileView.swift
//  RecipeStash
//
//  Created by Sahir on 04/07/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            Form {
                // Section profile
                Section(header:
                            Text("Personal details")
                            .bold()
                ) {
                    HStack(alignment: .top ,spacing: 20) {
                        // Photo Profile
                        Image("profile")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        
                        // Name and Info
                        VStack(alignment: .leading) {
                            Text("Sahir Syatha")
                                .font(.title3)
                                .bold()
                            Text("sahirsyatha77@gmail.com")
                                .font(.body)
                                .foregroundColor(.gray)
                            
                            Divider()
                            Text("+62 8778-525-5146")
                                .font(.body)
                                .foregroundColor(.gray)
                            
                            Divider()
                            Text("Jl. Matraman dalam 2 RT 14 RW 08 No.11, Kecamatan Menteng, Jakarta Pusat")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                }
                
                Section() {
                    HStack(spacing: 20) {
                        Image(systemName: "heart.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.red)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        Text("Favorites")
                            .bold()
                    }
                }
                .padding(.top, 10)
                .padding(.bottom, 10)
                .edgesIgnoringSafeArea(.all)
            }.navigationTitle("My Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
