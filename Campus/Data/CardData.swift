//
//  CardData.swift
//  Campus
//
//  Created by bowtie on 21.04.2022.
//

import SwiftUI

let cardsData: [Card] = [
    Card(image: "ace_of_hearts", title: "Решала", description: "Ты решаешь, кому пить. Укажи пальцем на счастливчика."),
    Card(image: "6_of_hearts", title: "Алкаш", description: "Ты выпиваешь."),
    Card(image: "7_of_hearts", title: "Считалка", description: "По часовой стрелке по очереди, начиная с тебя, все считают вслух, но с одним условием: нельзя называть числа, в которых есть 7, или те, которые делятся на 7. Например, 1, 2, 3, 4, 5, 6, 8...12, 13, 15, 16, 18."),
    Card(image: "8_of_hearts", title: "[Не]омерзительная 8", description: "Восьмерка защищает. С этой картой один раз можешь не пить."),
    Card(image: "9_of_hearts", title: "Животные", description: "По часовой стрелке по очереди, начиная с тебя, все называют животных. Кто называет животное, которое уже было озвучено, выпивает."),
    Card(image: "10_of_hearts", title: "Города", description: "По часовой стрелке по очереди, начиная с тебя, все называют города. Кто называет город, который уже был озвучен, выпивает."),
    Card(image: "jack_of_hearts", title: "Условие", description: "Например, что-то сказать или сделать перед тем или после того, как выпьешь. Если забудешь выполнить условие, выпиваешь. Если забудешь само условие, никто не должен  подсказывать, иначе будет пить вместе с тобой."),
    Card(image: "queen_of_hearts", title: "Можно спросить?", description: "Кто последний поднял руку, пьет."),
    Card(image: "king_of_hearts", title: "Молчать!", description: "На твои вопросы нельзя отвечать до тех пор, пока кто-то другой не вытянет короля. Твоя же задача – всех достать вопросами. Кто тебе ответит, тот выпивает."),
    Card(image: "ace_of_spades", title: "Решала", description: "Ты решаешь, кому пить. Укажи пальцем на счастливчика."),
    Card(image: "6_of_spades", title: "Алкаш", description: "Ты выпиваешь."),
    Card(image: "7_of_spades", title: "Считалка", description: "По часовой стрелке по очереди, начиная с тебя, все считают вслух, но с одним условием: нельзя называть числа, в которых есть 7, или те, которые делятся на 7. Например, 1, 2, 3, 4, 5, 6, 8...12, 13, 15, 16, 18."),
    Card(image: "8_of_spades", title: "[Не]омерзительная 8", description: "Восьмерка защищает. С этой картой один раз можешь не пить."),
    Card(image: "9_of_spades", title: "Животные", description: "По часовой стрелке по очереди, начиная с тебя, все называют животных. Кто называет животное, которое уже было озвучено, выпивает."),
    Card(image: "10_of_spades", title: "Города", description: "По часовой стрелке по очереди, начиная с тебя, все называют города. Кто называет город, который уже был озвучен, выпивает."),
    Card(image: "jack_of_spades", title: "Условие", description: "Например, что-то сказать или сделать перед тем или после того, как выпьешь. Если забудешь выполнить условие, выпиваешь. Если забудешь само условие, никто не должен  подсказывать, иначе будет пить вместе с тобой."),
    Card(image: "queen_of_spades", title: "Можно спросить?", description: "Кто последний поднял руку, пьет."),
    Card(image: "king_of_spades", title: "Молчать!", description: "На твои вопросы нельзя отвечать до тех пор, пока кто-то другой не вытянет короля. Твоя же задача – всех достать вопросами. Кто тебе ответит, тот выпивает."),
    Card(image: "ace_of_diamonds", title: "Решала", description: "Ты решаешь, кому пить. Укажи пальцем на счастливчика."),
    Card(image: "6_of_diamonds", title: "Алкаш", description: "Ты выпиваешь."),
    Card(image: "7_of_diamonds", title: "Считалка", description: "По часовой стрелке по очереди, начиная с тебя, все считают вслух, но с одним условием: нельзя называть числа, в которых есть 7, или те, которые делятся на 7. Например, 1, 2, 3, 4, 5, 6, 8...12, 13, 15, 16, 18."),
    Card(image: "8_of_diamonds", title: "[Не]омерзительная 8", description: "Восьмерка защищает. С этой картой один раз можешь не пить."),
    Card(image: "9_of_diamonds", title: "Животные", description: "По часовой стрелке по очереди, начиная с тебя, все называют животных. Кто называет животное, которое уже было озвучено, выпивает."),
    Card(image: "10_of_diamonds", title: "Города", description: "По часовой стрелке по очереди, начиная с тебя, все называют города. Кто называет город, который уже был озвучен, выпивает."),
    Card(image: "jack_of_diamonds", title: "Условие", description: "Например, что-то сказать или сделать перед тем или после того, как выпьешь. Если забудешь выполнить условие, выпиваешь. Если забудешь само условие, никто не должен  подсказывать, иначе будет пить вместе с тобой."),
    Card(image: "queen_of_diamonds", title: "Можно спросить?", description: "Кто последний поднял руку, пьет."),
    Card(image: "king_of_diamonds", title: "Молчать!", description: "На твои вопросы нельзя отвечать до тех пор, пока кто-то другой не вытянет короля. Твоя же задача – всех достать вопросами. Кто тебе ответит, тот выпивает."),
    Card(image: "ace_of_clubs", title: "Решала", description: "Ты решаешь, кому пить. Укажи пальцем на счастливчика."),
    Card(image: "6_of_clubs", title: "Алкаш", description: "Ты выпиваешь."),
    Card(image: "7_of_clubs", title: "Считалка", description: "По часовой стрелке по очереди, начиная с тебя, все считают вслух, но с одним условием: нельзя называть числа, в которых есть 7, или те, которые делятся на 7. Например, 1, 2, 3, 4, 5, 6, 8...12, 13, 15, 16, 18."),
    Card(image: "8_of_clubs", title: "[Не]омерзительная 8", description: "Восьмерка защищает. С этой картой один раз можешь не пить."),
    Card(image: "9_of_clubs", title: "Животные", description: "По часовой стрелке по очереди, начиная с тебя, все называют животных. Кто называет животное, которое уже было озвучено, выпивает."),
    Card(image: "10_of_clubs", title: "Города", description: "По часовой стрелке по очереди, начиная с тебя, все называют города. Кто называет город, который уже был озвучен, выпивает."),
    Card(image: "jack_of_clubs", title: "Условие", description: "Например, что-то сказать или сделать перед тем или после того, как выпьешь. Если забудешь выполнить условие, выпиваешь. Если забудешь само условие, никто не должен  подсказывать, иначе будет пить вместе с тобой."),
    Card(image: "queen_of_clubs", title: "Можно спросить?", description: "Кто последний поднял руку, пьет."),
    Card(image: "king_of_clubs", title: "Молчать!", description: "На твои вопросы нельзя отвечать до тех пор, пока кто-то другой не вытянет короля. Твоя же задача – всех достать вопросами. Кто тебе ответит, тот выпивает.")
]
