//
//  ChatRow.swift
//  Gabber Messenger
//
//  Created by daadoni coggins on 4/4/22.
//

import SwiftUI

struct ChatRow: View {
    let type: MessageType
    
    
    var isSender: Bool{
        return type == .sent
    }
  
    init(type: MessageType){
        self.type = type
        
    }
    
    var body: some View {
      
        
        HStack{
            
            if isSender{ Spacer()}
            HStack{
                Text("Hey,How's it going today")
                    .padding()
                   
                
            }
            .background(Color.purple)
            .cornerRadius(6)
            
        }
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(type: .sent)
            .preferredColorScheme(.dark)
    }
}
