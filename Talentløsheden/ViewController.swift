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
    
    var holgersStory : String = "Den talentløse lille dreng havde en ulempe: den såkaldte trylledrik, mælk, der fik en til at vokse, havde ikke den samme forgudende virkninger på ham, som den havde på mange de andre talentløse disciple. Men livet som lidt over en meter var nu ikke helt skidt alligevel. Til tider. For topspringet var stadig dobbelt hofte, hvilket alle ved, er et pigespring, som står skrevet i De 10 Bud, som det 8. af dem. Men fordele som tilbuddet om en wingman, eller at alle pigerne, inklusiv talentløs boi, synes han er en lille cutie, brusser ind over ham, ligesom sokkerne der sendte hans boller til destination fucked, gjorde. Han bliver sgu nok aldrig en helt rigtig, talentløs, fuldvoksen mand uden de boller der blev trykket direkte op i hans lille belly, men det er i sidste ende op til dig selv at bedømme om en rigtig mand skal bruge sine boller til at vise sin styrke."
    
    var larrysStory : String = "Boi havde ofret sine pengesedler til den talentløse gud for at skabe profeten “Soundboks.” men han startede ikke talentløsheden. Den lå i hans gener. Hans forældre ofrede deres liv for opdrage de talentløse børn. Den talentløse lækre søster og Boi. Boi skabte sit navn idet han sagde til de andre talentløse: “boi” der vidste de at han var en boi. Boi er også kendt for sine mange quotes han har skabt: how many H2O’s u got? Jeg har den ikke din faggot! Shut all yo bitches asses up og ikke mindst fuck mig i røven!!. Det der gør Boi så speciel er, at når han løber de 23,5 meter der er hen til trampolinen bliver han en filosof på højde med sokrates og alle de andre hunde. Han kommer i zen med krop og sjæl, og så kommer der nye quotes. De her quotes kommer til Boi som åbenbaringer sendt fra det guddommelige. Heriblandt har han sagt: “Til Narnia!”, “Fuck biscuit!”. "

    
    
    
    
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
                backGroundStory.text = holgersStory
            startupTextView.isHidden = true
        } else if exploreTextField.text == "Larry" || exploreTextField.text == "Boi" {
                profilePic.isHidden = false
                    backGroundStory.isHidden = false
                    profilePic.image = #imageLiteral(resourceName: "Larry")
                backGroundStory.text = larrysStory
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

