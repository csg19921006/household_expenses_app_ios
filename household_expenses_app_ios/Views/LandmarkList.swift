//
//  LandmarkList.swift
//  household_expenses_app_ios
//
//  Created by zhihao zhang on 2022/03/01.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
            NavigationLink {
                LandmarkDetail()
            } label: {
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
