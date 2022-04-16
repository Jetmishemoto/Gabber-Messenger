//
//  ContentView.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct ConversationListWindow: View {
    let KnownContacts = ["Mike","Orange","Tom","Anna","Bro","Bae","Peppercorn"]
    
    @EnvironmentObject var state: AppStateMachine
    @State var otherKnownContacts: String = ""
    @State var showChat = false
    
    var body: some View{
        NavigationView{
            ScrollView(.vertical){
                ForEach(KnownContacts, id: \.self){ name in
                    NavigationLink(
                        destination: ChatWindow(otherContacts: name),
                        label: {
                            HStack{
                                Circle()
                                    .frame(width: 50, height: 50, alignment: .center)
                                    .foregroundColor(.purple)
                                
                                
                                Text(name)
                                    .bold()
                                    .font(.system(size: 20))
                                    .foregroundColor(Color(.label))
                                    .underline(true, color: Color.purple)
                                    .position(CGPoint(x: 45.0, y: 00.0))
                                    .frame(alignment: .leading)
                                
                                //                                padding(UIScreen.main.bounds.width/5)
                                
                                
                                
                                
                                
                                
                            }
                            .padding()
                        })
                    
                }
                
                if !otherKnownContacts.isEmpty{
                    NavigationLink("", destination: ChatWindow(otherContacts: otherKnownContacts), isActive: $showChat)
                }
                
            }
            .navigationTitle("Messages")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Sign Out"){
                        self.signOut()
                    }
                }
                
                
                ToolbarItem(placement: .navigationBarLeading){
                    HStack{
                        Text("Search")
                        NavigationLink(
                            destination: SearchWindow { name in
                                DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                                    self.otherKnownContacts = name
                                    self.showChat = true
                                }
                            },
                        label: {
                            Image(systemName: "magnifyingglass")
                        })
                }}
                   
                
            }
            
           
            
        }
        .fullScreenCover(isPresented: $state.showSignIn, content: {
            SignInWindow()
        })
       
    }
    
    func signOut(){
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationListWindow()
            .preferredColorScheme(.dark)
    }
}
