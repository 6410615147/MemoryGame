//
//  EmojiViewModel.swift
//  MemoryGame
//
//  Created by นางสาวสุภาพันธ์ หง่อสกุล on 2/2/2567 BE.
//

import Foundation

class EmojiViewModel: ObservableObject {
    static let emojis = ["🥹", "🌙", "🎃", "🌈", "⭐️", "🌻", "🔥"]
    @Published private var model = MemoryGameModel<String>(numberOfPairsOfCards: emojis.count) { index in emojis[index]}
    
    var cards: [MemoryGameModel<String>.Card] {
        return model.cards
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGameModel<String>.Card) {
        model.choose(card)
    }
    
}
