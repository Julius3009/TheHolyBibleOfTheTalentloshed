//
//  ViewController.swift
//  Talentløsheden
//
//  Created by Holger Kargo on 23/05/2018.
//  Copyright © 2018 Holger Kargo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
        
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
    
    @IBOutlet var mainMenuButtons: [UIButton]!
    
    @IBAction func handleSelection(_ sender: UIButton) {
        mainMenuButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        
        }
    }
    
    enum mainMenuTaps: String {
        case talentløsbekendelsen = "Talentløsbekendelsen"
        case udforskDisciplnene = "Udforsk disciplnene"
        case salmebogen = "Salmebogen"
        
    }
    
    
    // The main knap
    @IBAction func submit(_ sender: Any) {
        locateDisciple()
    
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.exploreTextField.delegate = self
        profilePic.isHidden = true
        backGroundStory.isEditable = false
        backGroundStory.isHidden = true
        startupTextView.isEditable = false
        exploreTextField.isHidden = true
    }
    
    @IBAction func mainMenuButtonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let dropDownMenu = mainMenuTaps(rawValue: title) else {
            return
        }
        
        switch dropDownMenu {
            
        case .talentløsbekendelsen:
            startupTextView.isHidden = false
        case .udforskDisciplnene:
            exploreTextField.isHidden = false
        case .salmebogen:
            print("hi")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locateDisciple() {
        if exploreTextField.text == "Holger" || exploreTextField.text == "Lille dreng" || exploreTextField.text == "holger" {
            profilePic.isHidden = false
                backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Holger")
                backGroundStory.text = holgersStory
            startupTextView.isHidden = true
        } else if exploreTextField.text == "Larry" || exploreTextField.text == "Boi" || exploreTextField.text == "larry"{
            profilePic.isHidden = false
                backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Larry")
                backGroundStory.text = larrysStory
            startupTextView.isHidden = true
        } else if exploreTextField.text == "Malthe" || exploreTextField.text == "Got-movez" || exploreTextField.text == "malthe" {
            profilePic.isHidden = false
                backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Malthe")
                backGroundStory.text = malthesStory
            startupTextView.isHidden = true
        } else if exploreTextField.text == "Laurits" || exploreTextField.text == "Fireball" || exploreTextField.text == "laurits" {
            profilePic.isHidden = false
                backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Laurits")
                backGroundStory.text = lauritsStory
            startupTextView.isHidden = true
        }
        else if exploreTextField.text == "Villads" || exploreTextField.text == "forræder" || exploreTextField.text == "villads" {
            profilePic.isHidden = false
                backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Villads")
                backGroundStory.text = villadsStory
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

