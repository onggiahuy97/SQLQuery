//
//  CRMViewModel.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import Combine

class CRMViewModel: ObservableObject {
    
    @Published var selectedDatas: [Table] = []
    @Published var selectColunms: [TableColunm] = []
    @Published var query: String = ""
    
    let data: [Table] = Table.data
    let shortcutData: [ShortcutQuery] = ShortcutQuery.data
}

extension CRMViewModel {
    func generateQuery() -> String {
        var tables = ""
        selectedDatas.forEach { tables.append("\($0.tableName), ")}
        tables = String(tables.dropLast(2))
        
        var columns = ""
        selectColunms.forEach { columns.append("\($0.crmTableName).\($0.colunm), ")}
        columns = String(columns.dropLast(2))
        
        let string = """
        SELECT
            \(columns)
        FROM
            \(tables)
        \("""
        \(query == "" ? "" : "WHERE")
            \(query)
        """)
        """
        return string
    }
}
