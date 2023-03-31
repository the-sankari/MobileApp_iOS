//
//  CountryImageView.swift
//  Countries
//
//  Created by Kajol Sutra Dhar on 31.3.2023.
//

import SwiftUI

struct CountryFlagView: View {
    var body: some View {
        Image("flag_Finland").shadow(color: .cyan, radius: 7)
    }
}

struct CountryFlagView_Previews: PreviewProvider {
    static var previews: some View {
        CountryFlagView()
    }
}
