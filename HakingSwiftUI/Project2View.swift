//
//  Project2View.swift
//  HakingSwiftUI
//
//  Created by 유인호 on 2023/04/08.
//
import SwiftUI

struct Project2View: View {
    var body: some View {
        Form{
            NavigationLink(
                destination: gradation()
                , label: {
                    Text("gradation.swift")
                })
        }
        .navigationTitle("Project 2")
    }
    
   
}

struct Project2View_Previews: PreviewProvider {
    static var previews: some View {
        Project2View()
    }
}
