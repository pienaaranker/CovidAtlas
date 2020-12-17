//
//  Event.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/17.
//

import SwiftUI

struct Event: View {
    
    var event: EventModel
    
    var body: some View {
        
        VStack(spacing: 0) {
            HStack{
                Spacer()
                Text(event.displayableDate)
                    .bold()
                    .modifier(CTextStyle())
                    .padding(8)
                
                Spacer()
            }
            VStack(alignment: .leading) {
                HStack{
                    Text(event.title)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .modifier(CTextStyle())
                        .padding([.leading, .top], 16)
                        .padding(.bottom, 8)
                    Spacer(minLength: 24)
                    Text("Open")
                        .modifier(CTextStyle())
                        .opacity(0.5)
                        .padding(.top, 16)
                    Text(event.openTime)
                        .bold()
                        .multilineTextAlignment(.trailing)
                        .modifier(CTextStyle())
                        .padding([.trailing, .top], 16)
                        .padding([.bottom, .top], 8)
                }
                HStack{
                    Text("\(event.waitTime) wait time")
                        .modifier(CTextStyle())
                        .multilineTextAlignment(.leading)
                        .opacity(0.5)
                        .padding([.leading, .bottom], 16)
                    Spacer(minLength: 24)
                    Text("Close")
                        .modifier(CTextStyle())
                        .opacity(0.5)
                        .padding(.bottom, 16)
                    Text(event.closeTime)
                        .bold()
                        .multilineTextAlignment(.trailing)
                        .modifier(CTextStyle())
                        .padding([.trailing, .bottom], 16)
                        .padding(.top, 8)
                }
            }
            .background(Colors.Event.background)
            .cornerRadius(16)
        }
        .background(Colors.Event.background)
        .cornerRadius(16)
    }
}

struct Event_Previews: PreviewProvider {
    static var previews: some View {
        Event(event: ModelData().medicalData.events.first!)
    }
}
