//
//  LoginView.swift
//  Tes 2
//
//  Created by Geraldy Kumara on 16/01/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var vm = ViewModel()
    @State private var showPassword: Bool = false
    
    var body: some View{
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.red.opacity(0.1), .white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    Component.CustomTextField(text: $vm.username, placeholder: "Email")
                        .padding(.bottom, 5)
                    
                    Component.CustomSecureField(showPassword: $showPassword, text: $vm.password, placeholder: "Password")
                    
                    Spacer()
                    
                    Component.ErrorText(text: vm.errorMessage)
                    
                    Component.CustomButton {
                        vm.login()
                    }
                    
                    NavigationLink(destination: ListView(), isActive: $vm.showLoginScreen) {
                        EmptyView()
                    }
                    
                }
                .navigationTitle("Sign In")
                .ignoresSafeArea(.keyboard)
                .padding()
            }
        }
        
    }
}

#Preview {
    LoginView()
}
