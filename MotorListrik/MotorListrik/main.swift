//
//  main.swift
//  MotorListrik
//
//  Created by Surya on 07/06/21.
//

import Foundation

var speedTotal = 0

// Function untuk mendapatkan item dari user
func getInput(message: String) -> String? {
    print(message, terminator: " : ");
    return readLine()
}

func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message) {
        return Int(inputString)
    } else {
        return nil
    }
}

// Closure untuk menambah kecepatan
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    func incrementer() -> Int {
        speedTotal += amount
        return speedTotal
    }
    return incrementer
}

// Closure untuk mengurangi kecepatan
func makeDecrementer(forDecrementer amount: Int) -> () -> Int {
    func decrementer() -> Int {
        speedTotal -= amount
        return speedTotal
    }
    return decrementer
}

// Menentukan nilai penambahan dan pengurangan
let incrementerByTen = makeIncrementer(forIncrement: 10)
let decrementerByTen = makeDecrementer(forDecrementer: 10)


// Menyalakan mesin motor listrik
func turnOnEngine() {
    print("Hidupkan mesin.........")
    print("Selamat datang di Motor Listrik Dicoding")
    print("Brem brem brem brem")
}

// Mematikan mesin motor listrik
func turnOffEngine(){
    print("Ciiiittttt.....")
    print("Motor berhenti!!!")
}

func showSpeed(){
    print("Kecepatan saat ini : \(speedTotal)")
    print("Ngeeenggg")
}

// Memberikan aksi ke motor listrik
func action() {
    print("-----------------------------------")
    print("Ayo beraksi:")
    print("[1] Tambahkan kecepatan")
    print("[2] Kurangi kecepatan")
    print("[3] Matikan mesin")
    if let state = getInputInt(message: "Masukkan aksi Anda") {
        switch state {
        case 1:
            speedTotal = incrementerByTen()
            showSpeed()
            action()
        case 2:
            if speedTotal > 0 {
                speedTotal = decrementerByTen()
                showSpeed()
                action()
            } else {
                turnOffEngine()
                break
            }
        case 3:
            turnOffEngine()
            break
            default:
            break
        }
    } else {
        print("Input tidak valid")
    }
}

// Memulai program
turnOnEngine()
action()


