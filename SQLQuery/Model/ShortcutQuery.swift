//
//  ShortcutQuery.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import Foundation

struct ShortcutQuery: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let query: String
}

extension ShortcutQuery {
    static let data = [
        ShortcutQuery(title: "Quick access to see oppotunity of this month", query: ""),
        ShortcutQuery(title: "List top months have the best selling", query: ""),
        ShortcutQuery(title: "List bad months", query: "")
    ]
}
