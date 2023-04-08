//
//  EnterName.swift
//  HakingSwiftUI
//
//  Created by 유인호 on 2023/03/26.
//

import SwiftUI

struct EnterName: View {
    @State private var name = ""
    @State private var age = ""
    @State var tapCount = 0
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("Hello, SwiftUI!")
                }
                Section{
                    Button("Tap Count \(tapCount)"){
                        tapCount += 1
                    }
                }
                Section{
                    TextField("Enter your name ", text: $name)
                    TextField("Enter your age", text: $age)
                    Text("My name is \(name).")
                    Text("My age is \(age).")
                }
                .navigationTitle("SwiftUI")
                .navigationBarTitleDisplayMode(.inline)
            

            }
        }
    }
}

struct EnterName_Previews: PreviewProvider {
    static var previews: some View {
        EnterName()
    }
}
