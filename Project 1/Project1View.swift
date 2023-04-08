//
//  Project1View.swift
//  HakingSwiftUI
//
//  Created by A_Mcflurry on 2023/04/08.
//

import SwiftUI

struct Project1View: View {
    var body: some View {
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
    }
}

struct Project1View_Previews: PreviewProvider {
    static var previews: some View {
        Project1View()
    }
}
