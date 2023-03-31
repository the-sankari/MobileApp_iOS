//
//  ContentView.swift
//  Countries
//
//  Created by Kajol Sutra Dhar on 28.3.2023.
//
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
//        fetching details 
        CountryDetailView(country: finland)
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
