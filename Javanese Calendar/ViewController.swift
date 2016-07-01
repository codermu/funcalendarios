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
        dateFormatter.locale = NSLocale(localeIdentifier: "id-ID")

        
        let months = dateFormatter.monthSymbols
        let monthSymbol = months[month-1] // month - from your date components
        
        dateFormatter.dateFormat = "EEEE"
        let nameofdaySymbol = dateFormatter.stringFromDate(date)
        
        lblmonth.text = monthSymbol + " " + year.description
        lbldate.text = day.description
        lblday.text = nameofdaySymbol
        
        var arrMyActivities = [
            "Pergi ke shopping mall yuk",
            "Mumpung libur, saatnya main game",
            "Nambah jam tidur juga kadang kadang bagus lho buat kesehatan",
            "Udah cek film film baru di bioskop ? Hari ini pergi nonton asik juga nih",
            "Temen paling asik adalah temen di masa sekolah, yuk ajakin mereka hangout",
            "Masih inget sedihnya waktu adegan Rangga pergi ninggalin Cinta di bandara, nonton AADC lagi ah",
            "Jalan jalan ke Bandung",
            "Saatnya keluar keringet, F U T S A L !",
            "Nonton drama korea dari episode 1 sampe tamat",
            "Game COC nih level perlu dinaikin",
            "Udah pernah main helicopter remote control ? Asik lho. Cari ke toko mainan yuk",
            "Pergi ke pasar buah. Cari duren. Beli. Belah. Makannnn",
            "Udah lama kan ga ke timezone ? Ayo main",
            "Masa yang paling indah masa kanak kanak. Masih inget jajanan yang suka kamu beli waktu kecil ? Yuk cari",
            "Paling enak hari ini pergi berenang",
            "Jaman sekarang penampilan penting. Saatnya ke salon potong rambut model terbaru",
            "Pergi ke shopping mall yuk",
            "Mumpung libur, saatnya main game",
            "Nambah jam tidur juga kadang kadang bagus lho buat kesehatan",
            "Udah cek film film baru di bioskop ? Hari ini pergi nonton asik juga nih",
            "Temen paling asik adalah temen di masa sekolah, yuk ajakin mereka hangout",
            "Masih inget sedihnya waktu adegan Rangga pergi ninggalin Cinta di bandara, nonton AADC lagi ah",
            "Jalan jalan ke Bandung",
            "Saatnya keluar keringet, F U T S A L !",
            "Nonton drama korea dari episode 1 sampe tamat",
            "Game COC nih level perlu dinaikin",
            "Udah pernah main helicopter remote control ? Asik lho. Cari ke toko mainan yuk",
            "Pergi ke pasar buah. Cari duren. Beli. Belah. Makannnn",
            "Udah lama kan ga ke timezone ? Ayo main",
            "Masa yang paling indah masa kanak kanak. Masih inget jajanan yang suka kamu beli waktu kecil ? Yuk cari",
            "Paling enak hari ini pergi berenang",
            "Jaman sekarang penampilan penting. Saatnya ke salon potong rambut model terbaru",
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

