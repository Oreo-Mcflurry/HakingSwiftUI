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
                NavigationLink(destination: Project1View(), label: {
                    Text("Project 1")
                })
                
                NavigationLink(destination: Project2View(), label: {
                    Text("Project 2")
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


