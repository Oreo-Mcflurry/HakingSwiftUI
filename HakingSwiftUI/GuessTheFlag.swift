//
//  GuessTheFalg.swift
//  HakingSwiftUI
//
//  Created by 유인호 on 2023/04/08.
//

import SwiftUI

struct GuessTheFlag: View {
    @State private var showingAlert = false
    
    var body: some View {
        VStack{
            Button("Button") {}
                .buttonStyle(.bordered)
            Button("Button1", role: .destructive) {}
                .buttonStyle(.bordered)
            Button("Button2") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Show Alert", role: .destructive) {
                showingAlert = true
            }
            .alert("Important message", isPresented: $showingAlert){
                Button("Delete", role: .destructive) {}
                Button("Cancle", role: .cancel) {}
            } message: {
                Text("Pleage read this")
            }
                .buttonStyle(.borderedProminent)
            
            Button{
                print("Editing1")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            .buttonStyle(.borderedProminent)
            
        }
        
    }
    func executeDelete() {
        print("Now deleting")
    }
}

struct GuessTheFlag_Previews: PreviewProvider {
    static var previews: some View {
        GuessTheFlag()
    }
}
