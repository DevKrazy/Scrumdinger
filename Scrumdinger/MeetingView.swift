//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Nathan on 08/06/2021.
//

import SwiftUI

// A view of the app (a view must be simple)
struct MeetingView: View {
    var body: some View {
        VStack {
            
            ProgressView(value: 5.0, total: 15.0)
            
            HStack {
                // alignment: the same as text formatting softwares (default center alignment)
                VStack(alignment: .leading) {
                    Text("Seonds Elapsed")
                        .font(.caption)
                    // .font is a modifier which returns a view, we can stack them vertically
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer() // consumes available space from parent stack
                VStack(alignment: .trailing) {
                    Text("Seconds remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore) // ignores the default accessibility features (VoiceOver)
            .accessibilityLabel(Text("Time remaining"))
            .accessibilityValue(Text("10 minutes"))
            
            Circle()
                .strokeBorder(lineWidth: 24, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
            .accessibilityLabel(Text("Next speaker"))
        }
        .padding()
    }
}

// A content preview which displays the view on the canvas
struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
            .preferredColorScheme(.dark)
            
    }
}
