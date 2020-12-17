//
//  MedicalDetail.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import SwiftUI

struct MedicalDetail: View {
    var details: MedicalDataReponse    
    
    var body: some View {
            ZStack {
                Colors.primaryGradient.edgesIgnoringSafeArea(.all)
                VStack(spacing: 0) {
                    ScrollView {
                        VStack(spacing: 0.0) {
                            Image("shield_check")
                                .resizable()
                                .frame(width: 80, height: 100)
                                .padding()
                            VStack(alignment: .leading, spacing: 0.0){
                                Text(MedicalDetailViewModel.Strings.title)
                                    .font(.system(size: 32))
                                    .bold()
                                    .modifier(CTextStyle())
                                    .padding()
                                Text(MedicalDetailViewModel.Strings.subtitle)
                                    .font(.subheadline)
                                    .modifier(CTextStyle())
                                    .padding()
                                TimeLine(startDate: details.startDate, endDate: details.endDate)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 16) {
                                        ForEach(details.events) { event in
                                            Event(event: event)
                                        }
                                    }
                                    .listRowInsets(EdgeInsets())
                                    
                                }
                                .padding()
                                HStack {
                                    Text(MedicalDetailViewModel.Strings.availibilityText)
                                        .modifier(CTextStyle())
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Colors.Card.chevron)
                                    
                                }
                                .padding()
                            }
                            Spacer()
                        }
                        .background(LinearGradient(gradient: Gradient(colors: [Colors.primary, Colors.primaryGradient]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .ignoresSafeArea()
                        
                    }
                    Barcode(name: details.name)
                        .ignoresSafeArea()
                }
                .ignoresSafeArea(edges: [.leading, .trailing, .bottom])
                
            }
            .navigationBarTitle("Medical")
    }
}

struct MedicalDetail_Previews: PreviewProvider {
    static var previews: some View {
        MedicalDetail(details: ModelData().medicalData)
    }
}
