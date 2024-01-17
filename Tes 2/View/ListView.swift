//
//  ListView.swift
//  Tes 2
//
//  Created by Geraldy Kumara on 17/01/24.
//

import SwiftUI

struct ListView: View {
    
    let students: [Student] = Student.students
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(students){ student in
                        Component.StudentCard(student: student)
                    }
                }
                .navigationTitle("List of Student")
                .padding()
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ListView()
}
