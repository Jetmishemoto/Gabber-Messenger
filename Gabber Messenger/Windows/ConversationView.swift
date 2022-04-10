//
//  ContentView.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct ConversationListWindow: View {
    let KnownContacts = ["Mike","Orange","Tom","Anna","Bro","Bae","Peppercorn"]
    
    var body: some View{
        NavigationView{
            ScrollView(.vertical){
                ForEach(KnownContacts, id: \.self){ name in
                    NavigationLink(
                        destination: ChatWindow(otherContacts: name),
                        label: {
                            HStack{
                                Circle()
                                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.purple)
                                
                                
                                Text(name)
                                    .bold()
                                    .font(.system(size: 20))
                                    .foregroundColor(Color(.label))
                                    .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.purple)
                                    .position(CGPoint(x: 45.0, y: 00.0))
//                                padding(UIScreen.main.bounds.width/5)
                                    
                                    
                                
                                    
                                Spacer()
                                
                            }
                            .padding()
                        })
                    
                }
                
            }
            .navigationTitle("Messages")
            .toolbar{
                ToolbarItem(placement:
                                ToolbarItemPlacement.navigationBarTrailing){
                    Button("Sign Out"){
                        self.signOut()
                      }
                    }
                
                ToolbarItem(placement:
                                ToolbarItemPlacement.navigationBarLeading){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "magnifyingglass")
                    })
                }
                
            }
 
        }
       
    }
    func signOut(){}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationListWindow()
            .preferredColorScheme(.dark)
    }
}
