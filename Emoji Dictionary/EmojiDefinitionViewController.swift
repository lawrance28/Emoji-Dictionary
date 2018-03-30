//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Kuang Yao Chang on 2018/3/29.
//  Copyright © 2018年 Kuang Yao Chang. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
// ["😀","💩","🦑","🏈","🚘","🕍"]
        if emoji == "😀" {emojiDefinitionLabel.text = "A nice smile"
        }
        if emoji == "💩" {emojiDefinitionLabel.text = "💩"
        }
        if emoji == "🦑" {emojiDefinitionLabel.text = "🦑"
        }
        if emoji == "🏈" {emojiDefinitionLabel.text = "🏈"
        }
        if emoji == "🚘" {emojiDefinitionLabel.text = "🚘"
        }
        if emoji == "🕍" {emojiDefinitionLabel.text = "🕍"
        }
        
    }


}
