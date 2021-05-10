//
//  main.swift
//  FoodRecipes
//
//  Created by Surya on 10/05/21.
//

import Foundation

print("Welcome to FoodRecipes")
print("Mari membuat makanan!")

print("------------------------")
print("Apa yang ingin anda buat?")
let food = readLine() ?? ""
print("Masukan jumlah item yang ingin anda masukan", terminator: ": ")
let newItem = readLine() ?? "0"
print("------------------------")

if let totalItem: Int = Int(newItem) {
    var recipe = [String]()
    for index in 1...totalItem {
        print("Masukan item ke \(index)", terminator: ": "); let newItem = String(readLine() ?? "")
        recipe.append(newItem)
    }
    
    print("-------------------------")
    print("Berapa lama proses memasak dilakukan?"); let time = readLine() ?? ""
    print("-------------------------")
    recipe.sort()
    print("Anda akan membuat \(food) selama \(time) dengan resep: ")
    for (index, value) in recipe.enumerated() {
        print("\(index + 1). \(value)")
    }
} else {
    print("Input tidak valid")
}

print("----------------------")

