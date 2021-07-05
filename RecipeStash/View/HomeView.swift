//
//  HomeView.swift
//  RecipeStash
//
//  Created by Sahir on 04/07/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {
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
                    
                    List(foodItems, id: \.id) { food in
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                NavigationLink(destination: DetailFoodView(foodData: food)) {
                                    FoodRow(foodData: food)
                                }
                            }
                        }
                        .ignoresSafeArea(.all)
                    }
                }
            }.ignoresSafeArea(.all)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
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
