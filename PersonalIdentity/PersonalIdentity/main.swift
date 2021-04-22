//
//  main.swift
//  PersonalIdentity
//
//  Created by Surya on 22/04/21.
//

import Foundation

print("Welcome to Apple Developer")

/*
let firstName = "Surya", lastName = "Harahap"
let fullName = firstName + " " + lastName
let addres = "Bandung"
let job = "iOS Developer"
let age = "21"

print("--------------------------")

print("My name is \(fullName)")
print("I like to \(job)")
print("I live in \(addres) and my age \(age)")
*/

print("Enter your firs name: "); let firstName = readLine()!
print("Enter your last name: "); let lastName = readLine()!
print("Enter your age: "); let age = readLine()!
print("Enter your addres: "); let addres = readLine()!
print("Enter your job: "); let job = readLine()!

let fullName = firstName + " " + lastName

print("--------------------------")
print("My name is \(fullName)")
print("I like to \(job)")
print("I live in \(addres) and my age \(age)")

