//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Kuang Yao Chang on 2018/3/29.
//  Copyright © 2018年 Kuang Yao Chang. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        birthLabel.text = emoji.birthday
        categoryLabel.text = emoji.category
        emojiDefinitionLabel.text = emoji.emojiDefinition
    
/*
        emojiLabel.text = emoji
// ["😀","💩","🦑","🏈","🚘","🕍"]
        if emoji == "😀" {emojiDefinitionLabel.text = "A nice smile"
            birthLabel.text = "2017"
            categoryLabel.text = "emoji"
        }
        if emoji == "💩" {emojiDefinitionLabel.text = "💩"
            birthLabel.text = "2013"
            categoryLabel.text = "shit"
        }
        if emoji == "🦑" {emojiDefinitionLabel.text = "🦑"
            birthLabel.text = "2008"
            categoryLabel.text = "sea food"
        }
        if emoji == "🏈" {emojiDefinitionLabel.text = "🏈"
            birthLabel.text = "2011"
        }
        if emoji == "🚘" {emojiDefinitionLabel.text = "🚘"
            birthLabel.text = "2015"
        }
        if emoji == "🕍" {emojiDefinitionLabel.text = "🕍"
            birthLabel.text = "2014"
        }
*/
    }


}
