//
//  ChatWindow.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct ChatWindow: View {
    
    @State var message: String = ""
    
    let otherContacts : String
    init(otherContacts : String){
        self.otherContacts = otherContacts
    }
    
    var body: some View {
        VStack{
            ScrollView(.vertical){
                ChatRow(text:"Hello", type: .sent)
                    .padding(5)
                ChatRow(text:"Hello", type: .received)
                    .padding(5)
            }
            
            // Field, Chat send button
            HStack{
                TextField("Message...", text: $message)
                    .padding(10)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(7)
                
                SendButton(text: $message)
                
                    
            }
            .padding()
        }
        
        .navigationTitle(otherContacts)
    }
}

struct ChatWindow_Previews: PreviewProvider {
    static var previews: some View {
        ChatWindow(otherContacts: "")
            .preferredColorScheme(.dark)
    }
}
