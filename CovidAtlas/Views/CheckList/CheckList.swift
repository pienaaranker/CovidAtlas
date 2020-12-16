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
        HStack {
            Spacer()
            CheckListItem(title: "Acknowledge Form", isComplete: true)
            CheckListItem(title: "Training", isComplete: true)
            CheckListItem(title: "Medical", isComplete: false)
            CheckListItem(title: "Attest", isComplete: true)
            Spacer()
        }
        .background(Colors.secondaryGradient)
        .ignoresSafeArea()
    }
}

struct CheckList_Previews: PreviewProvider {
    static var previews: some View {
        CheckList()
    }
}
