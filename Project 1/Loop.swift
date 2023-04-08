//
//  Loop.swift
//  HakingSwiftUI
//
//  Created by 유인호 on 2023/03/26.
//

import SwiftUI

struct Loop: View {
    let studnets = ["Musk","Elon","Tesla", "SpaceX", "Boring Company", "Neuralink"]
    @State private var selected = "Musk"
    var body: some View {
        
            NavigationView {
                Form{
                    Picker("Select your Pick", selection: $selected){
                        ForEach(studnets, id: \.self){
                            Text($0)
                        }
                    }
                    Text("Your pick is \(selected).")
                }
            }
        }
}

struct Loop_Previews: PreviewProvider {
    static var previews: some View {
        Loop()
    }
}
