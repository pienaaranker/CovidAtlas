//
//  RichText.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import Foundation
import SwiftUI

struct RichText: View {

    struct Element: Identifiable {
        let id = UUID()
        let content: String
        let isBold: Bool

        init(content: String, isBold: Bool) {
            var content = content.trimmingCharacters(in: .whitespacesAndNewlines)

            if isBold {
                content = content.replacingOccurrences(of: "*", with: "")
            }

            self.content = content
            self.isBold = isBold
        }
    }

    let elements: [Element]

    init(_ content: String) {
        elements = content.parseRichTextElements()
    }

    var body: some View {
        var content = text(for: elements.first!)
        elements.dropFirst().forEach { (element) in
            content = content + self.text(for: element)
        }
        return content
    }

    private func text(for element: Element) -> Text {
        let postfix = shouldAddSpace(for: element) ? " " : ""
        if element.isBold {
            return Text(element.content + postfix)
                .fontWeight(.bold)
        } else {
            return Text(element.content + postfix)
        }
    }

    private func shouldAddSpace(for element: Element) -> Bool {
        return element.id != elements.last?.id
    }
}
