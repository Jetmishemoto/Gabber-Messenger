//
//  SignUpWindow.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct SignUpWindow: View {
  
        @State var username: String = ""
        @State var email: String = ""
        @State var password: String = ""
        @State var confirmpassword: String = ""

        
        @EnvironmentObject var state: AppStateMachine
        
        var body: some View {
            
           
                VStack{
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text(" A cool username and password")
                        .bold()
                        .font(.system(size: 30))
                        .padding()
                    
                    VStack{
                        TextField("Email Address", text: $email)
                            .modifier(CustomField())
                        
                        TextField("Username", text: $username)
                            .modifier(CustomField())
                            
                        
                        SecureField("Password", text: $password)
                            .modifier(CustomField())
                        
                        SecureField("Confirm Password", text: $confirmpassword)
                            .modifier(CustomField())
                        
                        Button(action: {
                            self.signUp()
                            
                        }, label: {
                            Text("Sign up")
                                .foregroundColor(.black)
                                .frame(width: 220, height: 50)
                                .background(Color.purple)
                                .cornerRadius(30)
                        })
                        
                    }
                    .padding()
                    
                    Spacer()
                    
                
                    
                    
                }
                .navigationBarTitle("Create Account", displayMode: .inline)
            
         
        }
        func signUp() {
            guard !username.trimmingCharacters(in: .whitespaces).isEmpty,
                  !email.trimmingCharacters(in: .whitespaces).isEmpty,
                  !password.trimmingCharacters(in: .whitespaces).isEmpty,
                  !confirmpassword.trimmingCharacters(in: .whitespaces).isEmpty,
                  password.count >= 7 else {return}
        }
    
    }


struct SignUpWindow_Previews: PreviewProvider {
    static var previews: some View {
        SignUpWindow()
    }
}
