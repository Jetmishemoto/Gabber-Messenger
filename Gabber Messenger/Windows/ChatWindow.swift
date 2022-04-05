//
//  ChatWindow.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct ChatWindow: View {
    
    @State var message: String = ""
    
    var body: some View {
        VStack{
            ScrollView(.vertical){
                ChatRow(type: .sent)
                    .padding(5)
                ChatRow(type: .received)
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
        
        .navigationTitle("Bro")
    }
}

struct ChatWindow_Previews: PreviewProvider {
    static var previews: some View {
        ChatWindow()
            .preferredColorScheme(.dark)
    }
}
