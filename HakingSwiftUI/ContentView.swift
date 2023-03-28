//
//  ContentView.swift
//  HakingSwiftUI
//
//  Created by 유인호 on 2023/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
                Form{
                NavigationLink(
                    destination: EnterName()
                    , label: {
                        Text("EnterName.swift")
                    })
                NavigationLink(
                    destination: Loop()
                    , label: {
                        Text("Loop.swift")
                    })
                NavigationLink(
                    destination: UserTextfFiled()
                    , label: {
                        Text("UserTextFiled.swift")
                    })
                    NavigationLink(
                        destination: Challenge()
                        , label: {
                            Text("Challenge.swift")
                        })
            }
            .navigationTitle("100 Days of SwiftUI")
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


