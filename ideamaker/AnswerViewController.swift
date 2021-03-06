//
//  AnswerViewController.swift
//  ideamaker
//
//  Created by 古田泰大 on 2015/11/22.
//  Copyright © 2015年 古田泰大. All rights reserved.
//

import UIKit
import AudioToolbox

class AnswerViewController: UIViewController {
    var reloadNumber:Int = 0;
    var genreNumber:Int = 0;
    @IBOutlet weak var anslabel: UILabel!
    @IBOutlet weak var anslabel2: UILabel!
    @IBOutlet weak var anslabel3: UILabel!
    
    let texts = ["家電","食べ物","飲み物","フルーツ","数字","動物","虫","植物","行動","ランダム"]
    let texts2 = ["ランダム"]
    let ceWords:[String] = ["掃除機","洗濯機","扇風機","エアコン","テレビ","電子レンジ","冷蔵庫","pc","オーブントースター","ブルーレイ","DVDレコーダー","ディスプレイ","プロジェクタ","スピーカー","CDプレイヤー","ラジカセ","電子辞書","炊飯器","ホットプレート","コーヒーメーカー","冷水機","ファンヒーター","ACアダプタ","加湿器","除湿機","空気清浄機","給油機","テプラ","アイロン","ミキサー","布団乾燥機","モバイルバッテリー","電話","マウス","キーボード",
    ]
    //let sbWords:[String] = ["国語","数学","理科","地理","音楽","理科","美術","技術","家庭科"]
    let foodWords:[String] = ["カレー","ラーメン","寿司","炒飯","焼き魚","ハンバーグ","グラタン","煮物","シチュー","ケバブ","うどん","焼きそば","あんかけ焼きそば","鍋料理","餃子","パスタ","タコス","ピザ","パエリア","寿司","お雑煮","おかゆ","ビーフストロガノフ","照り焼き","すいとん","お茶ずけ","炊き込みご飯","親子丼","海鮮丼","ちらし寿司","おにぎり","トースト","つけ麺","ビビンバ","牛丼","ジャージャー麺","ハンバーガー","肉じゃが","たこ焼き","ホットドッグ","フランクフルト","いくら丼","クレープ","酢豚","ちまき","春巻き","焼きそば","焼き鳥","オムレツ","おでん","ハヤシライス","うな重","ステーキ"
    ]
    let fruitWords:[String] = ["りんご","いちご","メロン","みかん","柿","バナナ","桃","スイカ","キウイ","アケビ","アセロラ","アボカド","あんず","イチジク","梅","カリン","キワノ","グアバ","グレープフルーツ","さくらんぼ","ザクロ","スターフルーツ","すもも","チェリモヤ","ドラゴンフルーツ","ネクタリン","パイナップル","パッションフルーツ","パパイヤ","びわ","葡萄","プルーン","クランベリー","ラズベリー","マンゴー","ライチ"]
    let animalWords:[String] = ["犬","猫","鳥","ライオン","カバ","猿","像","亀","トカゲ","チーター","パンダ","クマ","キリン","鹿","豚","牛","アリクイ","カンガルー","オランウータン","コアラ","ゴリラ","サイ","うさぎ"]
    
    let randomWords:[String] = ["掃除機","洗濯機","扇風機","エアコン","テレビ","電子レンジ","冷蔵庫","pc","オーブントースター","ブルーレイ","DVDレコーダー","ディスプレイ","プロジェクタ","スピーカー","CDプレイヤー","ラジカセ","電子辞書","炊飯器","ホットプレート","コーヒーメーカー","冷水機","ファンヒーター","ACアダプタ","加湿器","除湿機","空気清浄機","給油機","テプラ","アイロン","ミキサー","布団乾燥機","モバイルバッテリー","電話","マウス","キーボード","カレー","ラーメン","寿司","炒飯","焼き魚","ハンバーグ","グラタン","煮物","シチュー","ケバブ","うどん","焼きそば","あんかけ焼きそば","鍋料理","餃子","パスタ","タコス","ピザ","パエリア","寿司","お雑煮","おかゆ","ビーフストロガノフ","照り焼き","すいとん","お茶ずけ","炊き込みご飯","親子丼","海鮮丼","ちらし寿司","おにぎり","トースト","つけ麺","ビビンバ","牛丼","ジャージャー麺","ハンバーガー","肉じゃが","たこ焼き","ホットドッグ","フランクフルト","いくら丼","クレープ","酢豚","ちまき","春巻き","焼きそば","焼き鳥","オムレツ","おでん","ハヤシライス","うな重","ステーキ","りんご","いちご","メロン","みかん","柿","バナナ","桃","スイカ","キウイ","アケビ","アセロラ","アボカド","あんず","イチジク","梅","カリン","キワノ","グアバ","グレープフルーツ","さくらんぼ","ザクロ","スターフルーツ","すもも","チェリモヤ","ドラゴンフルーツ","ネクタリン","パイナップル","パッションフルーツ","パパイヤ","びわ","葡萄","プルーン","クランベリー","ラズベリー","マンゴー","ライチ","犬","猫","鳥","ライオン","カバ","猿","像","亀","トカゲ","チーター","パンダ","クマ","キリン","鹿","豚","牛","アリクイ","カンガルー","オランウータン","コアラ","ゴリラ","サイ","うさぎ"]
    
    var wordArrays:[[String]]?
    
    @IBOutlet var genreLabel: UILabel?
    
    override func viewDidLoad() {
        self.view.backgroundColor = ColorManager.themeColor()
        super.viewDidLoad()
        anslabel.textColor = ColorManager.whiteColor()
        anslabel2.textColor = ColorManager.whiteColor()
        anslabel3.textColor = ColorManager.whiteColor()
        
        self.navigationItem.title = texts[genreNumber]
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1.0)]
        
        
        wordArrays = [ceWords, foodWords, fruitWords, animalWords, randomWords]
        reloadWord()
    }
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    
    func reloadWord(){
        guard let array = wordArrays else { return }
        let randInt = Int(arc4random_uniform(UInt32(array[genreNumber].count)))
        anslabel.text = array[genreNumber][randInt]
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func reload() {
        reloadWord()
    }
   
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.type == UIEventType.Motion && event?.subtype == UIEventSubtype.MotionShake {
            // Motion began
            guard let array = wordArrays else { return }
            let randInt = Int(arc4random_uniform(UInt32(array[genreNumber].count)))
            anslabel.text = array[genreNumber][randInt]
        }
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destina
    tionViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
