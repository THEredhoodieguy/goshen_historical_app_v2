//
//  ViewController.swift
//  goshen_historical_app_v1
//
//  Created by Matthew Wesley Pletcher on 2/1/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//




/* woof woof woof woof woof woof woof woof woof woof woof woof

                                         do. 
                                        :NOX 
                                       ,NOM@: 
                                       :NNNN: 
                                       :XXXON 
                                       :XoXXX. 
                                       MM;ONO: 
  .oob..                              :MMO;MOM 
 dXOXYYNNb.                          ,NNMX:MXN 
 Mo"'  '':Nbb                        dNMMN MNN: 
 Mo  'O;; ':Mb.                     ,MXMNM MNX: 
 @O :;XXMN..'X@b.                  ,NXOMXM MNX: 
 YX;;NMMMM@M;;OM@o.                dXOOMMN:MNX: 
 'MOONM@@@MMN:':NONb.            ,dXONM@@MbMXX: 
  MOON@M@@MMMM;;:OOONb          ,MX'"':ONMMMMX: 
  :NOOM@@MNNN@@X;""XNN@Mb     .dP"'   ,..OXM@N: 
   MOON@@MMNXXMMO  :M@@M...@o.oN""":OOOXNNXXOo:
   :NOX@@@MNXXXMNo :MMMM@K"`,:;NNM@@NXM@MNO;.'N. 
    NO:X@@MNXXX@@O:'X@@@@MOOOXMM@M@NXXN@M@NOO ''b 
    `MO.'NMNXXN@@N: 'XXM@NMMXXMM@M@XO"'"XM@X;.  :b 
     YNO;'"NXXXX@M;;::"XMNN:""ON@@MO: ,;;.:Y@X: :OX. 
      Y@Mb;;XNMM@@@NO: ':O: 'OXN@@MO" ONMMX:`XO; :X@. 
      '@XMX':OX@@MN:    ;O;  :OX@MO" 'OMM@N; ':OO;N@N 
       YN;":.:OXMX"': ,:NNO;';XMMX:  ,;@@MNN.'.:O;:@X: 
       `@N;;XOOOXO;;:O;:@MOO;:O:"" ,oMP@@K"YM.;NMO;`NM 
        `@@MN@MOX@@MNMN;@@MNXXOO: ,d@NbMMP'd@@OX@NO;.'bb. 
       .odMX@@XOOM@M@@XO@MMMMMMNNbN"YNNNXoNMNMO"OXXNO.."";o. 
     .ddMNOO@@XOOM@@XOONMMM@@MNXXMMo;."' .":OXO ':.'"'"'  '""o. 
    'N@@X;,M@MXOOM@OOON@MM@MXOO:":ONMNXXOXX:OOO               ""ob. 
   ')@MP"';@@XXOOMMOOM@MNNMOO""   '"OXM@MM: :OO.        :...';o;.;Xb. 
  .@@MX" ;X@@XXOOM@OOXXOO:o:'      :OXMNO"' ;OOO;.:     ,OXMOOXXXOOXMb 
 ,dMOo:  oO@@MNOON@N:::"      .    ,;O:""'  .dMXXO:    ,;OX@XO"":ON@M@ 
:Y@MX:.  oO@M@NOXN@NO. ..: ,;;O;.       :.OX@@MOO;..   .OOMNMO.;XN@M@P 
,MP"OO'  oO@M@O:ON@MO;;XO;:OXMNOO;.  ,.;.;OXXN@MNXO;.. oOX@NMMN@@@@@M: 
`' "O:;;OON@@MN::XNMOOMXOOOM@@MMNXO:;XXNNMNXXXN@MNXOOOOOXNM@NM@@@M@MP 
   :XN@MMM@M@M:  :'OON@@XXNM@M@MXOOdN@@@MM@@@@MMNNXOOOXXNNN@@M@MMMM"' 
   .oNM@MM@ONO'   :;ON@@MM@MMNNXXXM@@@@M@PY@@MMNNNNNNNNNNNM@M@M@@P' 
  ;O:OXM@MNOOO.   'OXOONM@MNNMMXON@MM@@b. 'Y@@@@@@@@@@@@@M@@MP"'" 
 ;O':OOXNXOOXX:   :;NMO:":NMMMXOOX@MN@@@@b.:M@@@M@@@MMM@"""" 
 :: ;"OOOOOO@N;:  'ON@MO.'":""OOOO@@NNMN@@@. Y@@@MMM@@@@b 
 :;   ':O:oX@@O;;  ;O@@XO'   "oOOOOXMMNMNNN@MN""YMNMMM@@MMo. 
 :N:.   ''oOM@NMo.::OX@NOOo.  ;OOOXXNNNMMMNXNM@bd@MNNMMM@MM@bb 
  @;O .  ,OOO@@@MX;;ON@NOOO.. ' ':OXN@NNN@@@@@M@@@@MNXNMM@MMM@, 
  M@O;;  :O:OX@@M@NXXOM@NOO:;;:,;;ON@NNNMM'`"@@M@@@@@MXNMMMMM@N 
  N@NOO;:oO;O:NMMM@M@OO@NOO;O;oOOXN@NNM@@'   `Y@NM@@@@MMNNMM@MM 
  ::@MOO;oO:::OXNM@@MXOM@OOOOOOXNMMNNNMNP      ""MNNM@@@MMMM@MP 
    @@@XOOO':::OOXXMNOO@@OOOOXNN@NNNNNNNN        '`YMM@@@MMM@P' 
    MM@@M:'''' O:":ONOO@MNOOOOXM@NM@NNN@P  -hrr-     "`"""MM' 
    ''MM@:     "' 'OOONMOYOOOOO@MM@MNNM" 
      YM@'         :OOMN: :OOOO@MMNOXM' 
      `:P           :oP''  "'OOM@NXNM' 
       `'                    ':OXNP' 
                             '"'
*/

import UIKit

import Alamofire

var big_array = Array<Array<String>>()

var values_array = []

class ViewController: UIViewController {

    @IBOutlet weak var sampletext: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = "http://people.goshen.edu/~matthewwp/output_test.txt"
        
        var stuff_string = ""
		
		Alamofire.request(.GET, url)
			.responseString { response in
				stuff_string = response.result.value!
                values_array = stuff_string.characters.split { $0 == "\r\n"}.map(String.init)
                for i in values_array {
                     big_array.append(i.componentsSeparatedByString("|"))
                }

                //self.sampletext.text = big_array[3][4]
                Alamofire.request(.GET, big_array[3][3]).response { (request, response, data, error) in
                self.picture.image = UIImage(data: data!, scale:1)
                }

                
        }
        
		
		
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

