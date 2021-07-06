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
            ScrollView(.vertical, showsIndicators: false) {
                ZStack(alignment: .top) {
                    VStack(alignment:.center) {
                        Image(foodData.name)
                            .resizable()
                            .frame(width: 241,height: 241, alignment: .center)
                            .clipShape(Circle())
                            .padding(.top, 114)
                        
                        Text(foodData.name)
                            .font(.title)
                            .bold()
                            .padding(.top, 28)
                        
                        Text("Ingredients")
                            .font(.title3)
                            .bold()
                            .padding(.top, 32)
                            .padding(.trailing, 224)
                        
                        IngredientsRow(foodData: foodData)
                            .frame(height: 220)
                        
                        Text("Instructions")
                            .font(.title3)
                            .bold()
                            .padding(.top, 22)
                            .padding(.trailing, 224)
                        
                        Text(foodData.instruction)
                            .font(.body)
                            .padding(.top, 20)
                            .padding(.leading, 40)
                            .padding(.trailing, 20)
                            .padding(.bottom, 20)
                            .lineSpacing(2)
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
