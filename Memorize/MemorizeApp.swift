//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Lucas Lopes Furini on 01.04.24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
