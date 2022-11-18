//
//  RecipeData.swift
//  Cookademy
//
//  Created by Trent Glimp on 11/17/22.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
