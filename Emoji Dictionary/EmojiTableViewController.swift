//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Kuang Yao Chang on 2018/3/27.
//  Copyright © 2018年 Kuang Yao Chang. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis : [Emoji] = []
        //["😀","💩","🦑","🏈","🚘","🕍"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmoji()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let emoji = emojis[indexPath.row]
            cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.category)"
                //emojis[indexPath.row].theEmoji
        return cell
    }
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    func createEmoji() -> [Emoji] {
        let smiley = Emoji ()
        smiley.theEmoji = "😀"
        smiley.birthday = "2017"
        smiley.category = "Faces"
        smiley.emojiDefinition = "A happy smiling face"
        
        let shit = Emoji()
        shit.theEmoji = "💩"
        shit.birthday = "2011"
        shit.category = "shit"
        shit.emojiDefinition = "A nice brown shit"
        
        return [smiley,shit]
    }
    
}
