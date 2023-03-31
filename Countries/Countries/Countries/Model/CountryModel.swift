//
//  Country.swift
//  Countries
//
//  Created by Kajol Sutra Dhar on 28.3.2023.
//

import Foundation

struct Country{
    var name: String
    var flagImageName: String
    var area: Int
    var population: Int
    var wikipedia: String
    var isMember: Bool
    var isEurozoneMember: Bool
    var isSchengenMember: Bool
    
    init(name: String, flagImageName: String, area: Int, population: Int, wikipedia: String, isMember: Bool, isEurozoneMember: Bool, isSchengenMember: Bool) {
        self.name = name
        self.flagImageName = flagImageName
        self.area = area
        self.population = population
        self.wikipedia = wikipedia
        self.isMember = isMember
        self.isEurozoneMember = isEurozoneMember
        self.isSchengenMember = isSchengenMember
    }
    
//    important date
    var joined: Date? = nil
    var euro: Date? = nil
    var schengen: Date? = nil
    var exited: Date? = nil
}


enum DateKind {
    case joined
    case euro
    case schengen
    case exited
}

let foundingYear = 1958

protocol EUMember {
    var isCurrentMember: Bool{get}
    var isFoundingMember: Bool{get}

}

extension Country: EUMember{
    var isCurrentMember: Bool{
        return self.exited == nil
    }
    
    var isFoundingMember: Bool{
        guard self.joined != nil else{
            return false
        }
    
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year], from: self.joined!)
        return components.year == foundingYear
    }
}
func makeDate(year: Int, month: Int, day: Int) -> Date{
    let calendar = Calendar.current
    let components = DateComponents(year: year, month: month, day: day)
    return calendar.date(from: components)!
}
var finland = Country(name: "Finland", flagImageName: "flag_Finland", area: 338_435, population: 5_553_000, wikipedia: "https://en.wikipedia.org/wiki/Finland", isMember: true, isEurozoneMember: true, isSchengenMember: true)


func setupFinland() -> Country{

    
    finland.joined = makeDate(year: 1995, month: 1, day: 1)
    finland.euro = makeDate(year: 1999, month: 1, day: 1)
    finland.schengen = makeDate(year: 2001, month: 3, day: 25)
    return finland
}


func formateDate(date: Date) -> String{
    let formatter = DateFormatter()
    formatter.dateFormat = "dd-MM-yyyy"
    return formatter.string(from: date)
    
}
