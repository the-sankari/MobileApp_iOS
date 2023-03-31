//
//  CountryDetailView.swift
//  Countries
//
//  Created by Kajol Sutra Dhar on 28.3.2023.
//

import SwiftUI

struct CountryDetailView: View {
//    initializing Country struct
    var country: Country
//    initializing date for the country
    var finlandDates: Country = setupFinland()
    var body: some View {
//        creating new color for further use
        let skyBlueColor = Color(red: 0.15, green: 0.06, blue: 1.868)
//      Scrollview
        ScrollView{
            VStack {
//                Country flag mage
                CountryFlagView().frame(height: 200).ignoresSafeArea(edges: .top)
                
                VStack {
//                    country name
                    Text(finland.name)
                        .font(.title)
                        .foregroundColor(.init(skyBlueColor))
                        .fontWeight(.bold)
                    Divider()
//                    details
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("Area \n\(finland.area)").font(.title2)                            
                            Divider()
                            Text("Joined EU\n\(formateDate(date:finland.joined ?? Date.distantPast))")
                            Divider()
//
//                            Checking whether the country is Eurozone Member or not, if true, it  prints the Eurozone joining date
                            if finland.isEurozoneMember{
                                Text("Eurozone Member \n\(formateDate(date:finland.euro ?? Date.distantPast))")
                            }else if !finland.isEurozoneMember{
                                Text("Not an Eurozone Member")
                            }
                           
                        }
                        
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("Population \n\(finland.population)").font(.title2)
                            Divider()
//                            Checking whether the country is Schengen Member or not, if true, it  prints the Schengen joining date
                            if finland.isSchengenMember{
                            Text("Schengen Member \(formateDate(date:finland.schengen ?? Date.distantPast))")
                                .multilineTextAlignment(.trailing)
                            }else if !finland.isSchengenMember{
                                Text("Not a Schengen Member")
                            }
                            Divider()
//                            checking whether current member or not
                            if finland.isCurrentMember{
                                Text("Current member\nsince:  \(formateDate(date:finland.joined ?? Date.distantPast))")
                                    .multilineTextAlignment(.trailing) // if current member is true or isMember is true then, it prints the joining date for joining EU
                            } else if !finland.isMember{
                                Text("Exited: \n\(formateDate(date:finland.exited ?? Date.distantPast))")   // if the isMeber is false then it prints the exit date of the country
                            }
                            
                        }
                    }
                    Divider()
                    Text("More about \(finland.name)")
                        .font(.headline)
                    Button(action:{
                        if let finURL = URL(string: "\(finland.wikipedia)"){
                            UIApplication.shared.open(finURL)
                        }
                    }){
                        Text("Here On Wikipedia")
                    }
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(.black)
                    .accentColor(.white)
                    .shadow(radius: 7)
                    .fontWeight(.bold)
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {

        CountryDetailView(country: finland )
    }
}
