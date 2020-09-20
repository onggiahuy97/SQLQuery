//
//  ActionsView.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct ActionsView: View {
    @EnvironmentObject var model: CRMViewModel
    @State private var showQuery = false

    var body: some View {
        HStack(spacing: 20) {
            Spacer()
            Button(action:{
                model.selectedDatas.removeAll()
                model.selectColunms.removeAll()
                model.query = ""
            }) {
                Text("Reset 🗑")
            }
            Button(action: {
                showQuery = true
            }) {
                Text("Query 🔎")
                    .foregroundColor(Color.blue.opacity(0.9))
            }
            .alert(isPresented: $showQuery) {
                Alert(title: Text("Your query"), message: Text(model.generateQuery()), primaryButton: .cancel(Text("Copy"), action: {
                    NSPasteboard.general.clearContents()
                    NSPasteboard.general.setString(model.generateQuery(), forType: .string)
                }), secondaryButton: .cancel())
            }
            Spacer()
        }
    }
}

struct ActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ActionsView()
    }
}
