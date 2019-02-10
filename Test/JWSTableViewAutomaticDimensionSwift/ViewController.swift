//
//  ViewController.swift
//  JWSTableViewAutomaticDimensionSwift
//
//  Created by Clint on 2017. 8. 18..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//

import UIKit

/**
 Ref URL 01 : https://www.appcoda.com/self-sizing-cells/
 Ref URL 02 : https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithSelf-SizingTableViewCells.html
 Ref URL 03 : http://readme.skplanet.com/?p=11461
 Ref URL 04 : https://www.raywenderlich.com/129059/self-sizing-table-view-cells
 
 Self-Sizing Table View Cells Sample App
 */

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    // Test Data
    let items = [
        [
            Constants.Key.text :
            " 1절 : 동해물과 백두산이 마르고 닳도록, 하느님이 보우하사 우리나라만세." +
            "(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세." +
            "" +
            "2절: 남산위에 저 소나무 철갑을 두른듯, 바람서리 불변함은 우리기상일세." +
            "(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세." +
            "" +
            "3절: 가을 하늘 공활한데, 높고 구름없이 밝은 달은 우리가슴 일편단심일세." +
            "(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세." +
            "" +
            "4절: 이 기상과 이 맘으로 충성을 다하여 괴로우나 즐거우나 나라사랑하세." +
            "(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세." +
            "-이상입니다.-"
            ,Constants.Key.image: "sampleImage01_526_348"
        ],
        [
            Constants.Key.text :
            """
            1절 : 동해물과 백두산이 마르고 닳도록, 하느님이 보우하사 우리나라만세.
            (후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세.
            
            2절: 남산위에 저 소나무 철갑을 두른듯, 바람서리 불변함은 우리기상일세.
            (후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세.
            
            3절: 가을 하늘 공활한데, 높고 구름없이 밝은 달은 우리가슴 일편단심일세.
            (후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세.
            
            4절: 이 기상과 이 맘으로 충성을 다하여 괴로우나 즐거우나 나라사랑하세.
            (후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세.
            -이상입니다.-
            """
            ,Constants.Key.image:"sample_102_484"
        ],
        [
            Constants.Key.text :"값이 없다면?"
            ,Constants.Key.image:""
        ],
        [
            Constants.Key.text :""
            ,Constants.Key.image:""
        ],
        [
            Constants.Key.text :"이번엔 특수문자 테스트"
            ,Constants.Key.image:""
        ],
        [
            Constants.Key.text :
            "ㅂ+ 한자 키" +
            "─ │ ┌ ┐ ┘ └ ├ ┬ ┤ ┴ │ ━ ┃ ┏ ┓ ┛ ┗ ┣ ┳ ┫ ┻ ╋ ┠ ┯ ┨ ┷ ┿ ┝ ┰ ┥ ┸ ╂ ┒ ┑┚┙┖ ┕ ┎ ┍ ┞ ┟ ┡ ┢ ┦ ┧ ┩ ┪ ┭ ┮ ┱ ┲ ┵ ┶ ┹ ┺ ┽ ┾ ╀ ╁ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊" +
            
            "ㅁ+ 한자 키" +
            "＃ ＆ ＊ ＠ § ※ ☆ ★ ○ ● ◎ ◇ ◆ □ ■ △ ▲ ▽ ▼ → ← ↑ ↓ ↔ 〓 ◁ ◀ ▷ ▶ ♤ ♠ ♡ ♥ ♧ ♣ ⊙ ◈ ▣ ◐ ◑ ▒ ▤ ▥ ▨ ▧ ▦ ▩ ♨ ☏ ☎ ☜ ☞ ¶ † ‡ ↕ ↗ ↙ ↖ ↘ ♭ ♩ ♪ ♬ ㉿ ㈜ № ㏇ ™ ㏂ ㏘ ℡ ? ª º" +
            
            "ㄱ+ 한자 키" +
            "！ ＇ ， ． ／ ： ； ？ ＾ ＿ ｀ ｜ ￣ 、 、 。 · ‥ … ¨ 〃 ­ ― ∥ ＼ ∼ ´ ～ ˇ ˘ ˝ ˚ ˙ ¸ ˛ ¡ ¿ ː" +
            
            "ㄷ + 한자 키" +
            "＋－＜＝＞± × ÷ ≠ ≤ ≥ ∞ ∴ ♂ ♀ ∠ ⊥ ⌒ ∂ ∇ ≡ ≒ ≪ ≫ √ ∽ ∝ ∵ ∫ ∬ ∈ ∋ ⊆ ⊇ ⊂ ⊃ ∪ ∩ ∧ ∨ ￢ ⇒ ⇔ ∀ ∃ ∮ ∑ ∏" +
            
            "ㅎ+ 한자 키" +
            "Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ σ τ υ φ χ ψ ω" +
            
            "ㄲ+ 한자 키" +
            "Æ Ð Ħ Ĳ Ŀ Ł Ø Œ Þ Ŧ Ŋ æ đ ð ħ ı ĳ ĸ ŀ ł ø œ ß þ ŧ ŋ ŉ" +
            
            "ㅆ+ 한자 키" +
            "А Б В Г Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я а б в г д е ё ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я" +
            
            "ㅈ + 한자 키" +
            "ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ ⅷ ⅸ ⅹ Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ" +
            
            "ㅅ+ 한자 키" +
            "㉠ ㉡ ㉢ ㉣ ㉤ ㉥ ㉦ ㉧ ㉨ ㉩ ㉪ ㉫ ㉬ ㉭ ㉮ ㉯ ㉰ ㉱ ㉲ ㉳ ㉴ ㉵ ㉶ ㉷ ㉸ ㉹ ㉺ ㉻ ㈀ ㈁ ㈂ ㈃ ㈄ ㈅ ㈆ ㈇ ㈈ ㈉ ㈊ ㈋ ㈌ ㈍ ㈎ ㈏ ㈐ ㈑ ㈒ ㈓ ㈔ ㈕ ㈖ ㈗ ㈘ ㈙ ㈚ ㈛" +
            
            "ㄴ+ 한자 키" +
            "＂ （ ） ［ ］ ｛ ｝ ‘ ’ “ ” 〔 〕 〈 〉 《 》 「 」 『 』 【 】" +
            
            "ㅇ+ 한자 키" +
            "ⓐ ⓑ ⓒ ⓓ ⓔ ⓕ ⓖ ⓗ ⓘ ⓙ ⓚ ⓛ ⓜ ⓝ ⓞ ⓟ ⓠ ⓡ ⓢ ⓣ ⓤ ⓥ ⓦ ⓧ ⓨ ⓩ ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⑩ ⑪ ⑫ ⑬ ⑭ ⑮ ⒜ ⒝ ⒞ ⒟ ⒠ ⒡ ⒢ ⒣ ⒤ ⒥ ⒦ ⒧ ⒨ ⒩ ⒪ ⒫ ⒬ ⒭ ⒮ ⒯ ⒰ ⒱ ⒲ ⒳ ⒴ ⒵ ⑴ ⑵ ⑶ ⑷ ⑸ ⑹ ⑺ ⑻ ⑼ ⑽ ⑾ ⑿ ⒀ ⒁ ⒂" +
            
            "ㄹ+ 한자 키" +
            "＄ ％ ￦ Ｆ ′ ″ ℃ Å ￠ ￡ ￥ ¤ ℉ ‰ ? ㎕ ㎖ ㎗ ℓ ㎘ ㏄ ㎣ ㎤ ㎥ ㎥ ㎦ ㎙ ㎚ ㎛ ㎜ ㎝ ㎞ ㎟ ㎠ ㎡ ㎢ ㏊ ㎍ ㎎ ㎏ ㏏ ㎈ ㎉ ㏈ ㎧ ㎨ ㎰ ㎱ ㎲ ㎳ ㎴ ㎵ ㎶ ㎷ ㎸ ㎹ ㎀ ㎁ ㎂ ㎃ ㎄ ㎺ ㎻ ㎼ ㎽ ㎾ ㎿ ㎐ ㎑ ㎒ ㎓ ㎔ Ω ㏀ ㏁ ㎊ ㎋ ㎌ ㏖ ㏅ ㎭ ㎮ ㎯ ㏛ ㎩ ㎪ ㎫ ㎬ ㏝ ㏐ ㏓ ㏃ ㏉ ㏜ ㏆" +
            
            "ㅌ+ 한자 키" +
            "ㅥ ㅦ ㅧ ㅨ ㅩ ㅪ ㅫ ㅬ ㅭ ㅮ ㅯ ㅰ ㅱ ㅲ ㅳ ㅴ ㅵ ㅶ ㅷ ㅸ ㅹ ㅺ ㅻ ㅼ ㅽ ㅾ ㅿ ㆀ ㆁ ㆂ ㆃ ㆄ ㆅ ㆆ ㆇ ㆈ ㆉ ㆊ ㆋ ㆌ ㆍ ㆎ" +
            
            "ㅊ+ 한자 키" +
            "½ ⅓ ⅔ ¼ ¾ ⅛ ⅜ ⅝ ⅞ ¹ ² ³ ⁴ ⁿ ₁ ₂ ₃ ₄" +
            
            "ㅃ+ 한자 키" +
            "ァ ア ィ イ ゥ ウ ェ エ ォ オ カ ガ キ ギ ク グ ケ ゲ コ ゴ サ ザ シ ジ ス ズ セ ゼ ソ ゾ タ ダ チ ヂ ッ ツ ヅ テ デ トド ナ ニヌ ネ ノ ハ バ パ ヒ ビ ピ フ ブ プ ヘ ベ ペ ホ ボ ポ マ ミ ム メ モ ャ ヤ ュ ユ ョ ヨ ラ リ ル レ ロ ヮ ワ ヰ ヱ ヲ ン ヴ ヵ ヶ" +
            
            "ㄸ+ 한자 키" +
            "ぁ あ ぃ い ぅ う ぇ え ぉ お か が き ぎ く ぐ け げ こ ご さ ざ し じ す ず せ ぜ そ ぞ た だ ち ぢ っ つ づ て で と ど な に ぬ ね の は ば ぱ ひ び ぴ ふ ぶ ぷ へ べ ぺ ほ ぼ ぽ ま み む め も ゃ や ゅ ゆ ょ よ ら り る れ ろ ゎ わ ゐ ゑ を ん"
            ,Constants.Key.image:""
        ]
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 이 두줄의 코드 만으로 셀크기를 동적으로 렌더링 하도록 지시할 수 있음!
        // estimatedRowHeight : 예상 수치 설정, Default 0, 그러나 1로 하면 에러가 난다. 2 이상의 값으로 하자
        self.tableView.estimatedRowHeight = 44.0
        self.tableView.rowHeight = UITableView.automaticDimension
    }
}

// MARK: - UITableViewDataSouce, UITableViewDelegate
// MARK: - UITableViewDataSouce
extension ViewController: UITableViewDataSource {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.section == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTextTableViewCell", for: indexPath) as! SampleTextTableViewCell
            cell.initLayout(data: self.items[indexPath.row])
            return cell
        } else if (indexPath.section == 1) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SampleImageTableViewCell", for: indexPath) as! SampleImageTableViewCell
            cell.initLayout(data: self.items[indexPath.row])
            return cell
        } else if (indexPath.section == 2) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTextAndImageTableViewCell", for: indexPath) as! SampleTextAndImageTableViewCell
            cell.initLayout(data: self.items[indexPath.row])
            return cell
        } else {
            assert(false)
            return UITableViewCell()
        }
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    // Header View
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var labelString = ""
        if section == 0 { labelString = " >> Text" }
        else if section == 1 { labelString = " >> Image" }
        else if section == 2 { labelString = " >> Text And Image" }
        else { assert(false) }

        let view :UIView = UIView()
        view.backgroundColor = UIColor.green
        view.frame = CGRect.init(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: 20.0)
        
        let label = UILabel(frame: view.frame)
        label.text = labelString as String
        label.textColor = UIColor.black
        view.addSubview(label)
        
        return view
    }
}
