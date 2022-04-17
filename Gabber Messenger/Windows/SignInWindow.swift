//
//  SignInWindow.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct SignInWindow: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @EnvironmentObject var state: AppStateMachine
    
    var body: some View {
        
        NavigationView{
            VStack{
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Gabber Messenger")
                    .bold()
                    .font(.system(size: 30))
                
                VStack{
                    TextField("Username", text: $username)
                        .modifier(CustomField())
                        
                    
                    SecureField("Password", text: $password)
                        .modifier(CustomField())
                    Button(action: {
                        self.signIn()
                        
                    }, label: {
                        Text("Sign In")
                            .foregroundColor(.black)
                            .frame(width: 220, height: 50)
                            .background(Color.yellow)
                            .cornerRadius(30)
                    })
                    
                }
                .padding()
                
                Spacer()
                
                //Sign Up
                HStack{
                    Text("Don't have an account?")
                    NavigationLink("Create a account", destination: SignUpWindow())
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .padding()
                
            }
        }
     
    }
    func signIn() {
        guard !username.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              password.count >= 7 else {return}
        
        state.signIn(username: username, password: password)
    }
    
   
}

struct SignInWindow_Previews: PreviewProvider {
    static var previews: some View {
        SignInWindow()
            .preferredColorScheme(.dark)
    }
}
