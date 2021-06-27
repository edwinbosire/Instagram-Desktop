//
//  ContentView.swift
//  Shared
//
//  Created by Edwin Bosire on 26/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
			.preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
