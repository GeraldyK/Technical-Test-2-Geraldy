//
//  Component.swift
//  Tes 2
//
//  Created by Geraldy Kumara on 16/01/24.
//

import SwiftUI

struct Component {
    
    struct CustomTextField: View {
        
        @Binding var text: String
        var placeholder: String
        
        var body: some View {
            TextField(placeholder, text: $text)
                .foregroundColor(.black)
                .disableAutocorrection(true)
                .textInputAutocapitalization(.never)
                .padding()
                .frame(maxHeight: 50)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                })
        }
    }
    
    struct CustomSecureField: View {
        
        @Binding var showPassword: Bool
        @Binding var text: String
        var placeholder: String
        
        var body: some View {
            HStack{
                Group {
                    if showPassword {
                        TextField(placeholder, text: $text)
                    } else {
                        SecureField(placeholder, text: $text)
                    }
                }
                
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye" : "eye.slash")
                        .foregroundColor(.black)
                }
            }
            .foregroundColor(.black)
            .disableAutocorrection(true)
            .textInputAutocapitalization(.never)
            .padding()
            .frame(maxHeight: 50)
            .overlay(content: {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
            })
        }
    }
    
    struct CustomButton: View {
        
        var action: () -> Void
        var text: String = "Login"
        var color: Color = Color.blue
        
        var body: some View {
            VStack{
                Button(action: action) {
                    Text(text)
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: 55)
                        .background(color)
                        .cornerRadius(10)
                }
            }
        }
    }
    
    struct LoadingView: View {
        var body: some View {
            VStack{
                ProgressView()
                Text("Loading...")
            }
            .padding(40)
            .background(Color.white)
            .cornerRadius(8)
            .edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
    
    struct StudentCard: View {
        
        var student: Student
        
        var body: some View {
            VStack {
                HStack{
                    Image(student.profilePicture)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 80)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                    
                    
                    VStack(alignment: .leading){
                        Text("Name: \(student.name)")
                        
                        Text("Address: \(student.address)")
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                }
                Divider()
            }
        }
    }
    
    struct ErrorText: View {
        
        var text: String
        
        var body: some View {
            VStack{
                Text(text)
                    .lineLimit(2...2)
                    .font(.headline)
                    .foregroundStyle(.red)
                    .padding(.top, 12)
                    .padding(.leading, 24)
            }
        }
    }
    
}

struct ComponentView: View {
    var body: some View {
        VStack{
            Component.CustomTextField(text: .constant("Test"), placeholder: "Email...")
            
            Component.CustomSecureField(showPassword: .constant(true), text: .constant("test"), placeholder: "Password...")
            
            Component.CustomButton {
                //
            }
            
            Component.LoadingView()
            
            Component.StudentCard(student: Student(name: "Ahmad", profilePicture: "Image1", address: "Poris"))
            
            Component.ErrorText(text: "Ini error message")
        }
    }
}

#Preview {
    ComponentView()
}
