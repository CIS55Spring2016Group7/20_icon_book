//
//  ViewController.swift
//  20 Icon Reduced
//
//  Created by Lee Blevins on 5/9/16.
//  Copyright © 2016 DeAnza. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var panel: UIImageView!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btn16: UIButton!
    @IBOutlet weak var btn17: UIButton!
    @IBOutlet weak var btn18: UIButton!
    @IBOutlet weak var btn19: UIButton!
    @IBOutlet weak var btn20: UIButton!
    @IBOutlet weak var btn21: UIButton!
    @IBOutlet weak var btn22: UIButton!
    @IBOutlet weak var btn23: UIButton!
    
    
    var pageNum : Int = 0
    //note slide 12
    // page 45 46, 47 48
    // page 50
    
    let pageImage : [String] = ["001.png","002.png","003.png","004.png","005.png","006.png","007.png","008.png","009.png","010.png",
                                "011.png","012.png","013.png","014.png","015.png","016.png","017.png","018.png","019.png","020.png",
                                "021.png","022.png","023.png","024.png","025.png","026.png","027.png","028.png","029.png","030.png",
                                "031.png","032.png","033.png","034.png","035.png","036.png","037.png","038.png","039.png","040.png",
                                "041.png","042.png","043.png","044.png","046.png","046.png","048.png","048.png","049.png","050.png",
                                "051.png","052.png","053.png","054.png","055.png","056.png","057.png","058.png","059.png","060.png",
                                "061.png","062.png","063.png","064.png","065.png","066.png","067.png","068.png","069.png","070.png",
                                "071.png","072.png","073.png","074.png","075.png","076.png","077.png","078.png","079.png","080.png",
                                "081.png","082.png","083.png","084.png","085.png","086.png","087.png","088.png","089.png","090.png",
                                "091.png","092.png","093.png","094.png","095.png","096.png","097.png","098.png","099.png","100.png",
                                "101.png","102.png","103.png","104.png","105.png"]
    
    let text : [[String]] = [["I do, me, mife", "hurry up", "excuse me", "more", "More to say", "you do it, you, your turn", "stop, wait", "I'm sorry", "done, finished", "I don't know", "Uh Oh, Oh no!", "look", "Just kidding, teasing", "Let's do something else", "please", "not, don't can't", "help", "I forgot, forget", "goodbye", "thank you", "", "oops", "", "turn the page"],     //1
        ["What's your name?", "How are you?", "don't touch", "go away", "I love you", "My name is ", "Can I play?", "That's mine", "leave me alone", "I don't understand", "What's happening?", "I have no one to play with", "You have to share", "buzz off", "I understand", "What's next?", "I want to do what the others are doing", "", "", "that's not what I'm saying", "go back to page 1", "oops", "Go to categories", "go back to page 1A"],    //2
        ["It's time to / for", "I'm asking a question", "I have an idea", "I want", "I think it's ...", "", "I'm telling you something", "Let's pretend", "Let's go", "something's wrong", "one of my stories", "I'm teling a story", "I want to show you something", "do something", "Please get my communicator", "I have to go to the bathroom", "remember when", "I have a secret", "do a group activity", "clean up", "go back to page 1", "oops", "Go to categories"] ,//3
        ["I, me, my, mine", "not, don't, can't", "make, made", "it", "bag", "you, your, yours", "see, look, watch", "give, gave", "something", "bedroom", "ask", "do, did, does", "","in", "Please get my communicator", "someone", "get, got","", "new", "somewhere else", "go back to page 1", "oops", "Go to categories", ""], // 4
        ["I, me, my, mine", "not, don't, can't", "good, good job", "funny", "I don't like it", "you, your", "bad", "great", "fun", "noisy", "think, thought", "naughty", "awesome", "unbelieveable", "silly, crazy", "it's that's", "sad", "smart, clever", "OK", "kidding, teasing", "go back to page 1", "oops", "Go to categories", "turn the page"], //5
        ["cool", "beautiful", "best", "special", "lucky", "right", "pretty", "better", "favorite", "love it", "wrong", "handsome", "fantastic","exciting", "try, trying", "brave", "nice", "excellent!", "yummy", "go to list", "go back to page 1", "oops", "Go to categories", "go back to page 4A"],      //6
        ["I can't do it", "don't touch", "I don't want to do it", "annoying", "boring", "too hard, difficult", "don't help me", "yucky", "mean", "scary", "too easy","make me mad", "gross", "rude", "Let's do something else", "I want to do it by myself", "frystrating", "stinky", "greedy", "go to list", "go back to page 1", "oops", "go to categories", "go back to page 4A"] ,//7
        ["I, me, my, mine", "feel, felt","hurt, sore, pain", "tired","I don't want to do it", "you, your, yours", "fall, fell", "cut, bleeding", "grumpy", "I don't like this", "not, don't, can't", "sick", "bump, buise", "angry, mad", "health & sickness", "have, had, has", "", "itchy", "upset", "sad", "go back to page 1", "oops", "Go to categories", "turn the page"], //8
        ["it's that's", "hungry", "uncomfortable", "", "I want someone", "broken","thirsty", "", "", "It's not fair", "wet", "hot", "","", "I don't know what's wrong", "I have to go to the bathroom", "cold","","","go to list","go back to page 1", "oops", "go to categories", "go back to page 5A"],   //9
        ["I, me, my, mine", "wash, wipe", "stomach, tummy", "arm", "leg, knee", "you, your, yours", "cut", "back", "hand", "foot, feet", "not, don't, can't", "head", "hip", "finger", "toe", "touch", "face", "bottom", "thumb", "nail", "go back to page 1", "oops", "Go to categories", "turn the page"], //10
        ["brush", "eyes", "mouth", "", "skin", "hair", "nose","teeth", "", "blood", "", "ear", "tongue", "", "saliva", "neck, throat","cheek", "chin", "", "go to list", "go back to page 1", "oops", "Go to categories", "go back to page 6A"], //11
        ["It's already happened", "people", "activities", "clothes", "school", "It's about now", "actions", "places", "things", "transportation", "It's going to happen", "descriptions", "special events", "house and yard", "characters", "It's always happening", "days and times", "health and sickness", "foot or drink", "animals", "go back to page 1", "oops", "It's not in my book. I'll give you a hint", "turn the page" ], // 12
        ["feelings", "question", "I think it's", "alphabet", "More to say", "religion", "", "something's wrong", "", "Please get my communicator", "", "", "body parts", "", "", "show", "","","","", "go back to page 1", "oops", "It's not in my book I'll give you a hint", "go back to page 7A" ], // 13
        ["You need to tell me Yes or No", "where", "I, me, my, mine", "do, did, does, doing", "it's that's", "why", "you, your, yours", "want", "next", "what", "how", "we, us, our", "go, went, going", "Are you OK?", "who, whose", "which", "not, don't, can't", "think, thought", "person", "go back to page 1", "oops", "go to catergories", "list"], //14
        ["I, me, my, mine", "mom", "","","", "you, your, yours", "dad", "","","","he, him, his", "we, us, our", "","","family", "she, her, hers", "they, them, their", "","", "school people", "go back to page 1", "oops", "go to categories", "turn the page"],    //15
        ["","","","boy", "child, children", "","","","girl","baby","","","","man","friend","","","babysitter","woman", "go to list", "go back to page 1", "oops","Go to categories", "go back to page 9A"]
    ]
    
    
    let data :[[String]] = [
        
        ["","","","","2","","","","","","","","","7a","","","","","","","0", "", "0","next"],                            //1
        ["","","","","","","","","","","","","","","","","","0","0","", "1","","7a","1a"],                                //2
        ["","8","7a","11a","4a","0","7a","7a","12a","5a","55","7a","3","10a","","50","7a","7a","25","", "1","","7a","0"],               //3
        ["","","","","", "","","","","", "","","0","","", "9a","", "0","","12a", "1","0","7a","0"],                          //4
        ["","","","","4c","","","","","","","","","","","","","","","", "1","0","7a","next"],                              //5
        ["","","","","","","","","","","","","","","","","","","","list", "1","","7a","4a"],                                //6
        ["","","","","","","","","","","","","","","11a","","","","","list", "1","","7a","4a"],                              //7
        ["","","6a","","4c","","","6a","","4c","","6a","6a","","14a","","0","6a","","", "1","","7a","next"],                      //8
        ["","18a","","","9a","","18a","0","0","","","","0","0","","50","","0","0","list", "1","","7a","5a"],                          //9
        ["","","","","","","","","","","","","","","","","","","","", "1","","7a","next"],                              //10
        ["","","","","", "","","","0","","0","","","0","","","","","0","list", "1","","7a","6a"],                                //11
        ["","9a","11a","15a","25a","","10a","12a","16a","19a","","24a","13a","17a","20a","","22a","14a","18a","21a","1","","","next"], //12
        ["23a","8","4a","51","2","26","0","5a","0","","0","0","6a","0","0","3","0","0","0","0", "1","","","7a"],                         //13
        ["7a","","","","","","","","","","","","","","","","","","","9a", "1","","7a","list"],                            //14
        ["","","0","0","0","","","0","0","0","","","0","0","","","","0","0","9c", "1","","7a","next"],                             //15
        ["0","0","0","","","0","0","0","","","0","0","0","","","0","0","","","list", "1","","7a","9a"],                                //16
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","9a"],                                //17
        ["0","0","0","0","10d","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","next"],                            //18
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","next", "1","0","7a","10a"],                            //19
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","10a"],                               //20
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","next", "1","0","7a","10a"],                            //21
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","10d","0","0","0","0","list", "1","0","7a","10a"],                          //22
        ["0","0","0","18a","11c","0","0","0","29","11d","0","0","0","27","46","0","0","28","30","9a", "1","0","7a","next"],                  //23
        ["0","44","36","0","0","0","38a","37","0","0","0","39","0","0","0","0","40","0","0","list", "1","0","7a","11a"],                        //24
        ["0","32","31","0","0","0","33","31","0","0","0","34","45","0","0","0","42","35","0","list", "1","0","7a","11a"],                    //25
        ["0","0","0","0","41","0","0","0","0","43","0","0","0","0","0","0","0","0","0","list", "1","0","7a","11a"],                          //26
        ["0","0","0","0","17a","0","0","0","0","11d","0","0","25c","0","12c","9a","0","0","0","0", "1","0","7a","next"],                     //27
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","12a"],                            //28
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","12a"],                            //29
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","next"],                              //30
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","13a"] ,                           //31
        ["0","0","0","0","14c","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","next"],                            //32
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","6a","0","0","0","0","next", "1","0","7a","14a"],                              //33
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","14a"],                            //34
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","24c","0","0", "1","0","7a","next"],                            //35
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","15a"],                            //36
        ["0","0","0","0","16c","0","0","0","0","42","0","0","0","0","0","0","0","0","0","0", "1","0","7a","next"],                           //37
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","16a"],                            //38
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","16a"],                            //39
        ["0","0","0","list","17c","0","0","0","list","list","0","0","0","list","list","0","0","0","list","0", "1","0","7a","next"],          //40
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","17a"],                            //41
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","next", "1","0","7a","17a"],                            //42
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","17a"],                            //43
        ["0","0","0","0","18b","0","0","0","0","18c","0","0","0","0","0","0","0","0","0","0", "1","0","7a","0"],                             //44
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","18a"],                            //45
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","18a"],                            //46
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","18a"],                            //47
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","18a"],                            //48
        ["0","0","0","0","39","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","next"],                           //49
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","19a"],                            //50
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","next"],                              //51
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","20a"],                            //52
        ["0","0","0","0","21c","0","0","0","0","21d","0","0","0","0","21e","0","0","0","0","21f", "1","0","7a","next"],                      //53
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","21a"],                            //54
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","21a"],                            //55
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","21a"],                            //56
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","21a"],                            //57
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","21a"],                            //58
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","next"],                              //59
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","22a"],                               //60
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","next"],                              //61
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","23a"],                            //62
        ["0","0","0","24c","24f","0","0","0","24d","24e","0","0","0","0","24h","0","0","0","0","24g", "1","0","7a","next"],                  //63
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","24a"],                            //64
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","24a"],                            //65
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","24a"],                            //66
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","24a"],                            //67
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","24a"],                            //68
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","24a"],                            //69
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","24a"],                            //70
        ["0","0","0","18a","25c","0","0","0","0","25d","0","0","0","0","0","0","0","0","0","9c", "1","0","7a","next"],                       //71
        ["0","28","0","0","0","0","11c","0","0","0","0","0","0","0","0","0","0","0","0","next", "1","0","7a","25a"],                         //72
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","25a"],                            //73
        ["0","0","0","0","16c","0","0","0","0","25e","0","0","0","0","0","0","0","0","0","list", "1","0","7a","25a"],                        //74
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","25a"],                            //75
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","list", "1","0","7a","0"],                              //76
        ["0","0","0","0","4a","0","0","0","0","0","0","0","0","0","list","0","0","0","list","list", "1","0","7a","list"],                    //77
        ["0","0","0","0","4a","0","0","0","0","list","0","0","0","0","list","0","0","0","0","list", "1","0","7a","list"],                    //78
        ["0","0","0","0","4a","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                             //79
        ["0","0","0","0","4a","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                             //80
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","9a","0","0", "1","0","7a","list"],                             //81
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","9a","24c","0", "1","0","7a","list"],                           //82
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","9a","24c","0", "1","0","7a","list"],                           //83
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","9a","24a","0", "1","0","7a","list"],                           //84
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","18a", "1","0","7a","list"],                            //85
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //86
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","24a","0", "1","0","7a","list"],                             //87
        ["0","0","0","0","0","0","0","0","0","38f","0","0","0","38b","38c","0","0","0","38d","38e", "1","0","7a","list"],                    //88
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","38a"],                               //89
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","24c","0", "1","0","7a","38a"],                             //90
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","38a"],                               //91
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","38a"],                               //92
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","38a"],                               //93
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //94
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //95
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //96
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //97
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //98
        ["0","0","0","0","15a","0","0","0","0","0","0","0","0","0","list","0","0","0","0","list", "1","0","7a","list"],                      //99
        ["0","0","0","0","4a","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                             //100
        ["0","0","0","0","4a","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                             //101
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //102
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //103
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0", "1","0","7a","list"],                              //104
        ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","space", "1","0","7a","0"],                                 //105
    ]
    var pages : [String] = ["1a" , "1b" , "2"  , "3"  , "4a" , "4b" , "4c" , "5a" , "5b" , "6a" ,
                            "6b" , "7a" , "7b" , "8"  , "9a" , "9b" , "9c" , "10a", "10b", "10c",
                            "10d", "10e", "11a", "11b", "11c", "11d", "12a", "12b", "12c", "13a",
                            "13b", "14a", "14b", "14c", "15a", "15b", "16a", "16b", "16c", "17a",
                            "17b", "17c", "17d", "18a", "18b", "18b", "18c", "18c", "19a", "19b",
                            "20a", "20b", "21a", "21b", "21c", "21d", "21e", "21f", "22a", "22b",
                            "23a", "23b", "24a", "24b", "24c", "24d", "24e", "24f", "24g", "24h",
                            "25a", "25b", "25c", "25d", "25e", "26" , "27" , "28" , "29" , "30" ,
                            "31" , "32" , "33" , "34" , "35" , "36" , "37" , "38a", "38b", "38c",
                            "38d", "38e", "38f", "39" , "40" , "41" , "42" , "43" , "44" , "45" ,
                            "46", "50", "50", "50", "51"
                            ]
    
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
        refreshBtn()
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

    @IBAction func btnClick(sender: AnyObject) {
         print (String(pageNum) + " page: " + pages[pageNum])
        let str = text[pageNum][sender.tag]
        let utterance = AVSpeechUtterance(string: str)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speakUtterance(utterance)
        
        
        if data[pageNum][sender.tag] != "" {
            if data[pageNum][sender.tag] == "next" {
                pageNum += 1
            }else if data[pageNum][sender.tag] == "list" {
            
            }else {
                pageNum = findPage(data[pageNum][sender.tag])
            }
        
            print (String(pageNum) + " page: " + pages[pageNum] + " imageName :" + pageImage[pageNum])
            panel.image = UIImage(named:  pageImage[pageNum])
        
            refreshBtn()
        }
        
        
    
    }
    

    
    func refreshBtn() -> Void {
        if data[pageNum][0 ] == "0"{btn0 .enabled = false} else{btn0 .enabled = true}
        if data[pageNum][1 ] == "0"{btn1 .enabled = false} else{btn1 .enabled = true}
        if data[pageNum][2 ] == "0"{btn2 .enabled = false} else{btn2 .enabled = true}
        if data[pageNum][3 ] == "0"{btn3 .enabled = false} else{btn3 .enabled = true}
        if data[pageNum][4 ] == "0"{btn4 .enabled = false} else{btn4 .enabled = true}
        if data[pageNum][5 ] == "0"{btn5 .enabled = false} else{btn5 .enabled = true}
        if data[pageNum][6 ] == "0"{btn6 .enabled = false} else{btn6 .enabled = true}
        if data[pageNum][7 ] == "0"{btn7 .enabled = false} else{btn7 .enabled = true}
        if data[pageNum][8 ] == "0"{btn8 .enabled = false} else{btn8 .enabled = true}
        if data[pageNum][9 ] == "0"{btn9 .enabled = false} else{btn9 .enabled = true}
        if data[pageNum][10] == "0"{btn10.enabled = false} else{btn10.enabled = true}
        if data[pageNum][11] == "0"{btn11.enabled = false} else{btn11.enabled = true}
        if data[pageNum][12] == "0"{btn12.enabled = false} else{btn12.enabled = true}
        if data[pageNum][13] == "0"{btn13.enabled = false} else{btn13.enabled = true}
        if data[pageNum][14] == "0"{btn14.enabled = false} else{btn14.enabled = true}
        if data[pageNum][15] == "0"{btn15.enabled = false} else{btn15.enabled = true}
        if data[pageNum][16] == "0"{btn16.enabled = false} else{btn16.enabled = true}
        if data[pageNum][17] == "0"{btn17.enabled = false} else{btn17.enabled = true}
        if data[pageNum][18] == "0"{btn18.enabled = false} else{btn18.enabled = true}
        if data[pageNum][19] == "0"{btn19.enabled = false} else{btn19.enabled = true}
        if data[pageNum][20] == "0"{btn20.enabled = false} else{btn20.enabled = true}
        if data[pageNum][21] == "0"{btn21.enabled = false} else{btn21.enabled = true}
        if data[pageNum][22] == "0"{btn22.enabled = false} else{btn22.enabled = true}
        if data[pageNum][23] == "0"{btn23.enabled = false} else{btn23.enabled = true}
        
    }


    func findPage(value : String) -> Int{
        for i in 0...pages.count - 1  {
            if value == pages[i]{
                return i
            }
        }
        return 0
    }

}

