//
//  ContentView.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct ConversationListWindow: View {
    let KnownContacts = ["Mike","Gary","Tom","Anna"]
    
    var body: some View{
        NavigationView{
            ScrollView(.vertical){
                ForEach(KnownContacts, id: \.self){ name in
                    NavigationLink(
                        destination: ChatWindow(),
                        label: {
                            HStack{
                                Circle()
                                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                
                                
                                Text(name)
                                    .bold()
                                    .font(.system(size: 20))
                                    .foregroundColor(Color(.label))
                                    .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.blue)
                                    .position(CGPoint(x: 45.0, y: 10.0))
                                    
                                    
                                
                                    
                                Spacer()
                            }
                            .padding()
                        })
                    
                }
                
            }
            .navigationTitle("Messages")
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationListWindow()
            .preferredColorScheme(.dark)
    }
}
