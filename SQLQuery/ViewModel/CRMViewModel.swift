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
    
    let data: [Table] = [
        Table(tableName: "Advisor", colunms: ["s_ID", "i_ID"]),
        Table(tableName: "Classroom", colunms: ["building","room_number", "capacity"]),
        Table(tableName: "Course", colunms: ["course_id", "title", "dept_name", "credits"]),
        Table(tableName: "Department", colunms: ["dept_name", "building", "budget"]),
        Table(tableName: "Instructor", colunms: ["ID", "name", "dept_name", "salary"]),
        Table(tableName: "Student", colunms: ["ID", "name", "dept_name", "tot_cred"]),
        Table(tableName: "Empinfo", colunms: ["first", "last", "id", "age", "city", "state"]),
        Table(tableName: "Prereq", colunms: ["course_id", "prereq_id"]),
        Table(tableName: "Section", colunms: ["course_id", "sec_id", "semester", "year", "building", "room_number", "time_slot_id"]),
        Table(tableName: "Sysdiagrams", colunms: ["name", "principal_id", "diagram_id", "version", "definition"]),
        Table(tableName: "Takes", colunms: ["ID", "course_id", "sec_id", "semester", "year", "grade"]),
        Table(tableName: "Teaches", colunms: ["ID", "course_id", "sec_id", "semester", "year"]),
        Table(tableName: "Time_slot", colunms: ["time_slot_id", "day", "start_hr", "start_min", "end_hr", "end_min"])
    ]
    
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
