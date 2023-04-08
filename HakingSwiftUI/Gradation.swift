//
//  Gradation.swift
//  HakingSwiftUI
//
//  Created by 유인호 on 2023/04/08.
//

import SwiftUI

struct gradation: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
    }
}

struct gradation_Previews: PreviewProvider {
    static var previews: some View {
        gradation()
    }
}
