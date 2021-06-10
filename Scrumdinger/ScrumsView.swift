//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Nathan on 10/06/2021.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List { // TODO: what is this syntax with the "{ }"?
            ForEach(scrums) { scrum in // is it a closure?
                CardView(scrum: scrum)
                    .listRowBackground(scrum.color)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.data)
            
    }
}
