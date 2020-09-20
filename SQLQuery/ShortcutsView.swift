//
//  ShortcutsView.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct ShortcutsView: View {
    @EnvironmentObject var model: CRMViewModel
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 8) {
            TextField("Search...", text: $text)
                .cornerRadius(5)
            ForEach(model.shortcutData.filter {
                $0.title.lowercased().contains(text.lowercased()) || text == ""
            }
            ){ shortcut in
                HStack {
                    Text(shortcut.title)
                        .modifier(headerModifier())
                    Spacer()
                }
            }
            Spacer()
        }
    }
}

struct ShortcutsView_Previews: PreviewProvider {
    static var previews: some View {
        ShortcutsView()
    }
}
