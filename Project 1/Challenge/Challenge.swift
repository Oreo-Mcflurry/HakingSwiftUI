//
//  Challenge.swift
//  HakingSwiftUI
//
//  Created by 유인호 on 2023/03/26.
//

import SwiftUI

struct Challenge: View {
    var body: some View {
                Form{
                    Section{
                        NavigationLink(
                            destination: Temperature()
                            , label: {
                                Text("1. Temperature conversion: users choose Celsius, Fahrenheit, or Kelvin.")
                            })
                    Text("2. Length conversion: users choose meters, kilometers, feet, yards, or miles.")
                    Text("3. Time conversion: users choose seconds, minutes, hours, or days.")
                    Text("4. Volume conversion: users choose milliliters, liters, cups, pints, or gallons.")
                         
                    } header: {
                        Text("Challenge Conditions")
                    }
                    
                    Section{
                        Text("1. A segmented control for meters, kilometers, feet, yard, or miles, for the input unit.")
                        Text("2. A second segmented control for meters, kilometers, feet, yard, or miles, for the output unit.")
                        Text("3. A text field where users enter a number.")
                        Text("4. A text view showing the result of the conversion.")
                    } header: {
                        Text("If you were going for length conversion you might have")
                    }
                .navigationTitle("Day 19 Challenge day")
            
        }
    }
}

struct Challenge_Previews: PreviewProvider {
    static var previews: some View {
        Challenge()
    }
}
