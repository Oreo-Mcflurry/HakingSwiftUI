//
//  Temperature.swift
//  HakingSwiftUI
//
//  Created by 유인호 on 2023/03/26.
//

import SwiftUI

struct Temperature: View {
    @State private var pickTemperature = "Celsius"
    @State private var enterTemperature = 0.0
    @FocusState private var auntFocused: Bool
    let temperatures = ["Celsius", "Fahrenheit", "Kelvin"]
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    var totalTemperature: Double {
        if(pickTemperature == "Celsius"){
            return enterTemperature
        } else if(pickTemperature == "Fahrenheit"){
            return enterTemperature * 1.8 + 32
        } else{
            return enterTemperature + 273.15
        }
    }
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Picker("Temperature Pick", selection: $pickTemperature){
                        ForEach(temperatures, id: \.self){
                            Text($0)
                        }
                        
                    }   // Picker
                    .pickerStyle(.segmented)
                    
                }  // Section
                
                Section{
                    TextField("Enter", value: $enterTemperature, formatter: formatter)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                } header: {
                    Text("Enter Celsius Temperature")
                }
               
                
                Section{
                    Text("\(totalTemperature)")
                } header: {
                    Text("Result")
                }
                
                Section{
                    Text("Textfield 숫자 입력받기 왜이리 빡센지... 머리 빠지는줄 알았음. 최고다 구글!")
                }
                
            }   // Form
            .navigationTitle("Pick temperature")
        }   // navigationView
    }
}
struct Temperature_Previews: PreviewProvider {
    static var previews: some View {
        Temperature()
    }
}
