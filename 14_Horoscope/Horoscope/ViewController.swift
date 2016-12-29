//
//  ViewController.swift
//  Horoscope
//
//  Created by 松井 里衣 on 2016/12/29.
//  Copyright © 2016年 松井　里衣. All rights reserved.
//

import UIKit

/*
クラス：
　　・フィールド（プロパティ)
　　・メソッド
*/


class ViewController: UIViewController {
	
	// MARK: - プロパティー（フィールド)
	
	@IBOutlet weak var tfMonth: UITextField!
	@IBOutlet weak var tfDay: UITextField!
	@IBOutlet weak var lbSeiza: UILabel!
	@IBOutlet weak var imgSeiza: UIImageView!

	// MARK: - オーバーライドメソッド　メソッド
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// MARK: - アクション　メソッド
	
	//キーボード[return]押した時
	//イベント:Did End On Exit (tf　月と日に設定）
	@IBAction func pushReturn(_ sender: Any) {
		//　空でOK
	}
	
	//判定ボタンを押した時　（リターンキーを強要しないように設定）
	@IBAction func resultSeiza(_ sender: Any) {
		
		//　キーボード非表示
		tfMonth.resignFirstResponder()
		tfDay.resignFirstResponder()
		
		//誕生日の取得(Sring→Intに変換）
		let numMonth = Int(tfMonth.text!)!
        let numDay = Int(tfDay.text!)!
		
		//判定値の設定
		let num = numMonth * 100 + numDay
		
		switch num {
		case 321...331, 401...419:
			lbSeiza.text = "牡羊座"
			imgSeiza.image = UIImage(named: "01_seiza.png")
			
		case 420...430, 501...520:
			lbSeiza.text = "牡牛座"
			imgSeiza.image = UIImage(named: "02_seiza.png")
		
		case 521...531, 601...621:
			lbSeiza.text = "双子座"
			imgSeiza.image = UIImage(named: "03_seiza.png")
		
		case 622...630, 701...722:
			lbSeiza.text = "蟹座"
			imgSeiza.image = UIImage(named: "04_seiza.png")
	
		case 723...731, 801...822:
			lbSeiza.text = "獅子座"
			imgSeiza.image = UIImage(named: "05_seiza.png")
		
		case 823...831, 901...922:
			lbSeiza.text = "乙女座"
			imgSeiza.image = UIImage(named: "06_seiza.png")
		
		case 923...930, 1001...1023:
			lbSeiza.text = "天秤座"
			imgSeiza.image = UIImage(named: "07_seiza.png")
		
		case 1024...1031, 1101...1121:
			lbSeiza.text = "蠍座"
			imgSeiza.image = UIImage(named: "08_seiza.png")
		
		case 1122...1131, 1201...1221:
			lbSeiza.text = "射手座"
			imgSeiza.image = UIImage(named: "09_seiza.png")
		
		case 1222...1230, 101...119:
			lbSeiza.text = "山羊座"
			imgSeiza.image = UIImage(named: "10_seiza.png")
		
		case 120...131, 201...218:
			lbSeiza.text = "天秤座"
			imgSeiza.image = UIImage(named: "11_seiza.png")
		
		case 219...230, 301...320:
			lbSeiza.text = "魚座"
			imgSeiza.image = UIImage(named: "12_seiza.png")
			
			
		default: // elseと同じ意味
			lbSeiza.text = "日付が変です"  //swiftではbreak文は不必要
			imgSeiza.image = UIImage(named: "")
			
		}
		
		
		
//		if (num >= 321 && num <= 331 || num >= 401 && num <= 419 ){
//			
//		lbSeiza.text = "牡羊座"
//			
//		}  else {
//		lbSeiza.text = "他"
//        }
//
    }

}
