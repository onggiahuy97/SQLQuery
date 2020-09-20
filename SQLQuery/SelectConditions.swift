//
//  SelectConditions.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct SelectConditions: View {
    @EnvironmentObject var model: CRMViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("🧹 Select Conditions")
                    .modifier(headerModifier())
                Spacer()
            }
            HStack {
                Text("Condition: ")
                TextField("...", text: $model.query)
            }
        }
    }
}

struct SelectConditions_Previews: PreviewProvider {
    static var previews: some View {
        SelectConditions()
    }
}
