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
    let text: String
  
    init(text: String ,type: MessageType){
        self.text = text
        self.type = type
        
    }
    
    var body: some View {
      
        
        HStack{
            
            if isSender{ Spacer()}
            
            if !isSender{
                VStack{
                    Spacer()
                    Circle()
                        .frame(width: 45, height: 45)
                        .foregroundColor(.purple)
                }
            }
            HStack{
                Text(text)
                    .foregroundColor(isSender ? Color.white : Color(.label))
                    .padding()
                   
                
            }
          
            .background(isSender ? Color.purple : Color(.systemGreen))
            .padding(isSender ? .leading : .trailing,
                     isSender ? UIScreen.main.bounds.width/3 :UIScreen.main.bounds.width/5 )
            .cornerRadius(10)
            
            if !isSender{ Spacer()}
            
        }
        
      
        
        
    }
}



struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ChatRow(text: "Test" ,type: .sent)
                .preferredColorScheme(.dark)
            ChatRow(text: "Test" ,type: .received)
                .preferredColorScheme(.dark)
            
        }
       
    }
}
