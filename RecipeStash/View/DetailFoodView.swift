//
//  DetailFoodView.swift
//  RecipeStash
//
//  Created by Sahir on 04/07/21.
//

import SwiftUI

struct DetailFoodView: View {
    var foodData: Food
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("detail background").edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    // Food Photo & name
                    Image(foodData.name)
                        .resizable()
                        .frame(width: 241,height: 241, alignment: .center)
                        .clipShape(Circle())
                        .padding(.top, 114)
                    
                    Text(foodData.name)
                        .font(.title)
                        .bold()
                        .padding(.top, 52)
                    
                    Text("Ingredients")
                        .font(.title3)
                        .bold()
                        .padding(.top, 38)
                        .padding(.trailing, 224)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            
                        }
                    }
                    
                }
            }.ignoresSafeArea(.all)
        }
    }
}


struct DetailFoodView_Previews: PreviewProvider {
    static var previews: some View {
        DetailFoodView(foodData: foodItems[0])
    }
}
