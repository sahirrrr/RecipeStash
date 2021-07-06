//
//  IngredientsRow.swift
//  RecipeStash
//
//  Created by Sahir on 05/07/21.
//

import SwiftUI
import Foundation

struct IngredientsRow: View {
    var foodData: Food
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                let ingredients = foodData.ingredients
                ForEach(ingredients, id: \.name) { data in
                    ZStack(alignment: .top) {
                        Rectangle()
                            .fill(Color("background"))
                            .frame(width: 114, height: 157)
                            .cornerRadius(20)
                            .shadow(color: Color("shadow"), radius: 4, x: 2, y: 10)
                            .padding(.top, 38)
                        
                        Image(data.name)
                            .resizable()
                            .frame(width: 88, height: 98)
                            .cornerRadius(20)
                        
                        Text(data.name)
                            .font(.headline)
                            .bold()
                            .padding(.top, 106)
                            .frame(width: 84, alignment: .center)
                            .multilineTextAlignment(.center)
                        
                        Text(data.amount)
                            .font(.headline)
                            .bold()
                            .padding(.top, 146)
                            .foregroundColor(Color("primary"))
                            .frame(width: 84,alignment: .center)
                            .multilineTextAlignment(.center)
                    }
                }
            }.padding(.leading, 40)
        }
    }
}

struct IngredientsRow_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsRow(foodData: foodItems[8])
    }
}

