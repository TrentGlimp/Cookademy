//
//  ModidfyRecipeView.swift
//  Cookademy
//
//  Created by Trent Glimp on 11/30/22.
//

import SwiftUI

struct ModifyRecipeView: View {
    @Binding var recipe: Recipe
    
    var body: some View {
        Button("Fill in the recipe with test data") {
            recipe.mainInformation = MainInformation(name: "test",
                                                     description: "test",
                                                     author: "test",
                                                     category: .breakfast)
            recipe.directions = [Direction(description: "test",
                                           isOptional: false)]
            recipe.ingredients = [Ingredient(name: "test",
                                             quantity: 1.0,
                                             unit: .none)]
        }
    }
}

struct ModidfyRecipeView_Previews: PreviewProvider {
    @State static var recipe = Recipe()
    static var previews: some View {
        ModifyRecipeView(recipe: $recipe)
    }
}
