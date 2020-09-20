//
//  CRM.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import Foundation

struct Table: Identifiable, Hashable {
    var id = UUID()
    let tableName: String
    let colunms: [String]
}

extension Table {
    static let data = [
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
}
