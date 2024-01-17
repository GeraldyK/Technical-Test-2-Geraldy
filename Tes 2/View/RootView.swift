//
//  RootView.swift
//  Tes 2
//
//  Created by Geraldy Kumara on 16/01/24.
//

import SwiftUI

struct RootView: View {
    
    var body: some View{
        VStack {
           LoginView()
        }
        .preferredColorScheme(.light)
    }
}

#Preview {
    RootView()
}
