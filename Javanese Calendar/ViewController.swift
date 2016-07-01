//
//  ViewController.swift
//  Javanese Calendar
//
//  Created by Edy Bez on 7/1/16.
//  Copyright © 2016 Edy Bez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblmonth: UILabel!
    @IBOutlet weak var lbldate: UILabel!
    @IBOutlet weak var lblday: UILabel!
    @IBOutlet weak var lblactivity: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month , .Year], fromDate: date)
        
        let year =  components.year
        let month = components.month
        let day = components.day
        
        let dateFormatter: NSDateFormatter = NSDateFormatter()
        
        let months = dateFormatter.monthSymbols
        let monthSymbol = months[month-1] // month - from your date components
        
        dateFormatter.dateFormat = "EEEE"
        let nameofdaySymbol = dateFormatter.stringFromDate(date)
        
        lblmonth.text = monthSymbol + " " + year.description
        lbldate.text = day.description
        lblday.text = nameofdaySymbol
        
        var arrMyActivities = [
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
            "selalu riang serta gembira",
            "tak pernah malas kalau bekerja",
            "aku adalah",
        ]
        
        for i in 1...50 {
            let index1 = Int(arc4random_uniform(30) + 1)
            let index2 = Int(arc4random_uniform(30) + 1)
            if(index1 != index2) {
                let temp = arrMyActivities[index1]
                arrMyActivities[index1] = arrMyActivities[index2]
                arrMyActivities[index2] = temp
            }

        }
        
        lblactivity.text = arrMyActivities[day]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

