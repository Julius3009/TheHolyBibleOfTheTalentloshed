//
//  ViewController.swift
//  Talentløsheden
//
//  Created by Holger Kargo on 23/05/2018.
//  Copyright © 2018 Holger Kargo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    var storyIndex : Int = 1
    
    var trosbekendelsen : String = "Talentløse guder, i som skaber soundboksen! Helliget vorde jeres navn, Komme jeres riger. Ske jeres vilje, som i hallen således også til konkurrence; Giv os i dag vor daglige dose talentløshed, og forbliv talentløse, som også vi forbliver talentløse, og led os ikke hen til fisken, men fri os fra det onde. For dit er riget og magten og talentløsheden i evighed!"
    

    
    
    
    
    // Søgning i bibelen
    @IBOutlet weak var exploreTextField: UITextField!
    
    // Teksten til baggrundshistorierne
    @IBOutlet weak var backGroundStory: UITextView!
    
    // Kun for trosbekendelsen
    @IBOutlet weak var startupTextView: UITextView!
    
    // Overskriften
    @IBOutlet weak var bibelLabel: UILabel!
    
    // profilBillede
    @IBOutlet weak var profilePic: UIImageView!
    
    // return
    @IBAction func hiddenReturn(_ sender: Any) {
        profilePic.isHidden = true
        backGroundStory.isHidden = true
        startupTextView.isHidden = false
        startupTextView.text = trosbekendelsen
        exploreTextField.text = nil
    }
    
    
    // The main knap
    @IBAction func submit(_ sender: Any) {
        locateDisciple()
        print("hi")
        print("Det virker!!!")
    }
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.exploreTextField.delegate = self
        profilePic.isHidden = true
        backGroundStory.isEditable = false
        backGroundStory.isHidden = true
        startupTextView.text = trosbekendelsen
        startupTextView.isEditable = false
    }
    
    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locateDisciple() {
        if exploreTextField.text == "Holger" || exploreTextField.text == "Lille dreng" {
            profilePic.isHidden = false
                backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Holger")
                backGroundStory.text = "Lille drengs baggrundshistorie."
            startupTextView.isHidden = true
        } else if exploreTextField.text == "Larry" || exploreTextField.text == "Boi" {
                profilePic.isHidden = false
                    backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Larry")
                backGroundStory.text = "Boi's baggrundshistorie."
            startupTextView.isHidden = true
        } else if exploreTextField.text == "Malthe" || exploreTextField.text == "Got-movez" {
                profilePic.isHidden = false
                    backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Malthe")
                backGroundStory.text = "Got-movez's baggrundshistorie."
            startupTextView.isHidden = true
        } else if exploreTextField.text == "Laurits" || exploreTextField.text == "Fireball" {
                profilePic.isHidden = false
                    backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Laurits")
                backGroundStory.text = "Fireballs baggrundshistorie"
            startupTextView.isHidden = true
        }
        else {
            startupTextView.text = "Der er ikke en discipel med det navn ... Har du prøvet med stort startbogstav?"
                profilePic.isHidden = true
                backGroundStory.isHidden = true
            startupTextView.isHidden = false
        }
    }
    
    
    
    //Touches outside of keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // When pressing return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        exploreTextField.resignFirstResponder()
        submit(self)
        return (true)
    }
}

