//
//  Home.swift
//  Instagram
//
//  Created by Edwin Bosire on 26/06/2021.
//

import SwiftUI
var screen = NSScreen.main!.visibleFrame

struct Home: View {

	var body: some View {
		HStack(spacing: 0) {
			Menu()
			FeedContainer()
		}
		.ignoresSafeArea(.all, edges: .all)
		.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
