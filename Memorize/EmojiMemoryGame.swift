//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lucas Lopes Furini on 01.04.24.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🚗", "🚕", "🚔", "🚑", "🚝", "⛴️", "🚢", "🛳️", "🚞", "🛺", "🚘", "🚃", "🚋", "🛴", "🚲", "🛵", "🏍️", "🦽", "🚒", "🚇"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { index in
            emojis[index]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    
    var cards: Array<Card> {
        model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
