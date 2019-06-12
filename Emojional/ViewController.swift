//
//  ViewController.swift
//  Emojional
//
//  Created by Helen Paulini on 6/11/19.
//  Copyright © 2019 Helen Paulini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🤗": "happy", "😴": "tired", "🤒": "sick", "🥳": "celebratory", "🤠": "adventurous", "😥": "sad"]
    let customMessages = ["happy": ["Hello there!👋", "Happy to see you!", "Feeling bright!🌟"], "tired": ["Get some rest!", "Time for bed🛏", "Goodnight🌙"], "sick": ["Get well soon!💕", "Feel better!", "It'll be alright!🧸"], "celebratory": ["Hip, Hip, HOORAY🎊", "Time to celebrate!!🎉", "Happy birthday!🎂"], "adventurous": ["Howdy, partner🌵", "Yee-Haw🐴", "There's a snake in my boot!🐍"], "sad": ["Cheer up buttercup🌼", "Take a deep breath🌬", "I'm here for you"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton){
        //when a user clicks a button, a message pops up and the user can then press 'OK' to exit from the message. Then the user can select another button.
        let selectedEmotion = sender.titleLabel?.text
        let randomNumber = Int.random(in: 0 ... 2)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[randomNumber]
        let alertController = UIAlertController(title: "🎭Emoji-Emotions🎭", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}

