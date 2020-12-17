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
            VStack {
                HStack{
                    Text(event.title)
                        .bold()
                        .modifier(CTextStyle())
                        .padding([.leading, .top], 16)
                        .padding(.bottom, 8)
                    Spacer()
                    Text("Open")
                        .modifier(CTextStyle())
                        .opacity(0.5)
                        .padding(.top, 16)
                    Text(event.openTime)
                        .bold()
                        .modifier(CTextStyle())
                        .padding([.trailing, .top], 16)
                        .padding([.bottom, .top], 8)
                }
                HStack{
                        Text("\(event.waitTime) wait time")
                            .modifier(CTextStyle())
                            .opacity(0.5)
                            .padding([.leading, .bottom], 16)
                Spacer()
                    Text("Close")
                        .modifier(CTextStyle())
                        .opacity(0.5)
                        .padding(.bottom, 16)
                    Text(event.closeTime)
                        .bold()
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
