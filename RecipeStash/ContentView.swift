//
//  ContentView.swift
//  RecipeStash
//
//  Created by Sahir on 04/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                
                VStack(alignment:.leading) {
                    Text("Delicious \nfood for you")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 92)
                        .padding(.leading, 50)
                    
                    SearchBar(text: .constant(""))
                        .padding(.top, 28)
                        .padding(.leading, 50)
                    
                    List {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack() {
                                CustomRow()
                                CustomRow()
                            }
                        }.listRowBackground(Color("background"))
                    }
                }.ignoresSafeArea(.all)
            }
        }.ignoresSafeArea(.all)
    }
}

struct SearchBar: View {
    @Binding var text: String
 
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search ...", text: $text)
                .padding(20)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(30)
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct CustomRow: View {
    var body: some View {
        ZStack(alignment:.center) {
            Rectangle()
                .fill(Color.white)
                .frame(width: 220, height: 270)
                .cornerRadius(30)
                .padding(.leading, 50)
                .shadow(color: Color("shadow"), radius: 8, x: 5, y: 15)
            
            Image("Beef Dumpling Stew")
                .resizable()
                .frame(width: 168, height: 189)
                .cornerRadius(20)
                .padding(.leading, 50)
                .padding(.bottom, 173)
            
            Text("Beef Dumpling Stew")
                .font(.title3)
                .bold()
                .padding(.top, 75)
                .padding(.leading, 50)
        }
    }
}
