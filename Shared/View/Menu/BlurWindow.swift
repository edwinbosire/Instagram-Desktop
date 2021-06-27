//
//  BlurWindow.swift
//  Instagram
//
//  Created by Edwin Bosire on 26/06/2021.
//

import SwiftUI

struct BlurWindow: NSViewRepresentable {
	func makeNSView(context: Context) -> NSVisualEffectView {
		let view = NSVisualEffectView()
		view.blendingMode = .behindWindow
		return view
	}

	func updateNSView(_ nsView: NSViewType, context: Context) {
		
	}
}
