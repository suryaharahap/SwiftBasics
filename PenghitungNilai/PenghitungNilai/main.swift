//
//  main.swift
//  PenghitungNilai
//
//  Created by Surya on 24/05/21.
//

import Foundation

print("Welcome")
print("--------------------")
print("Masukkan total nilai yang akan dinilai", terminator: ": ")
let total = readLine() ?? ""
print("--------------------")

if let totalItem : Int = Int(total) {
    var allValues = [Int]()
    for index in 1...totalItem {
        print("Masukkan item ke \(index)", terminator: ": "); let newItem = Int(readLine() ?? "") ?? 0
        allValues.append(newItem)
    }
    
    print("--------------------")
    var sum :Int = 0
    
    for (_, value) in allValues.enumerated() {
        sum += value
    }
    
    let avarage = sum / totalItem
    var grade = ""
    
    switch avarage {
    case 0...40:
        grade = "E";
        break
    case 41...50:
        grade = "D";
        break
    case 51...60:
        grade = "C";
        break
    case 61...70:
        grade = "C+";
        break
    case 71...80:
        grade = "B";
        break
    case 81...90:
        grade = "B+";
        break
    case 91...100:
        grade = "A"
        break
    default:
        grade = "Tidak Valid";
    }
    
    if grade != "Tidak Valis" {
        print("Anda mendapatkan Grade nilai \(grade) dari total \(total) nilai yang ada")
    } else {
        print("Nilai tidak valid")
    }
} else {
    print("Input tidak valid")
}

print("-------------------")
