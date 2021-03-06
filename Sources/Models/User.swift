//
//  Profile.swift
//  DrinkKit
//
//  Created by Nick Hayward on 10/21/18.
//  Copyright © 2018 Nick Hayward. All rights reserved.
//

import Foundation

public struct User {
  public typealias Kilograms = Double
  public typealias Meters = Double
  public typealias Feet = Int
  public typealias Inches = Int
  public typealias Pounds = Int
  
  public let Sex: Sex
  public let Weight: Pounds
  public let BAC: BAC?
  public let Drinks: [Drink?]
  public let MetabolicRate: MetabolicRate
  
  var Mass: Kilograms {
    return Double(Weight) / 2.205
  }
  
  public init(Sex: Sex = .male,
              Weight: Pounds = 160,
              Feet: Feet = 5,
              Inches: Inches = 11,
              BAC: BAC = 0.0,
              MetabolicRate: MetabolicRate = .standard,
              Drinks: [Drink?] = []){
    
    self.Sex = Sex
    self.Weight = Weight
    self.BAC = BAC
    self.Drinks = Drinks
    self.MetabolicRate = MetabolicRate
  }
}

extension User {
  public init(Sex: Sex = .male,
              kilogram Weight: Kilograms = 72,
              BAC: BAC = 0.0,
              MetabolicRate: MetabolicRate = .standard,
              Drinks: [Drink?] = []){
    self.Sex = Sex
    self.Weight = Pounds(Weight * 2.20462)
    self.BAC = BAC
    self.Drinks = Drinks
    self.MetabolicRate = MetabolicRate
  }
}
