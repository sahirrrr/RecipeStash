//
//  FoodRow.swift
//  RecipeStash
//
//  Created by Sahir on 04/07/21.
//

import SwiftUI

struct FoodRow: View {
    var foodData: Food
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: 220, height: 270)
                .cornerRadius(30)
                .padding(.top, 94)
                .shadow(color: Color("shadow"), radius: 5, x: 0, y: 10)
            
            Image(foodData.name)
                .resizable()
                .frame(width: 168, height: 189)
                .cornerRadius(20)
                .padding(.top, 52)
                .padding(.bottom, 173)
            
            Text(foodData.name)
                .font(.title3)
                .bold()
                .padding(.top, 160)
                .frame(width: 180, alignment: .center)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
        }
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(foodData: foodItems[1])
    }
}
