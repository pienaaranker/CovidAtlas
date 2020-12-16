//
//  CheckList.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import SwiftUI

struct CheckList: View {
    let viewModel = CheckListViewModel()
    
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            CheckListItem(type: .acknowledgeForm, isComplete: true)
            CheckListItem(type: .training, isComplete: true)
            CheckListItem(type: .medical, isComplete: false)
            CheckListItem(type: .attest, isComplete: true)
            Spacer()
        }
        .frame(height: 160)
        .background(Colors.secondaryGradient)
    }
}

struct CheckList_Previews: PreviewProvider {
    static var previews: some View {
        CheckList()
    }
}
