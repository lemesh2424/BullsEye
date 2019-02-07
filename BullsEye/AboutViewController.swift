//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Oleh Lemeshenko on 12/28/18.
//  Copyright © 2018 Oleh Lemeshenko. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
  @IBOutlet weak var webView: WKWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    webView.uiDelegate = self
    webView.navigationDelegate = self
    
    let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html")!
    webView.loadFileURL(url, allowingReadAccessTo: url)
    let request = URLRequest(url: url)
    webView.load(request)
  }

@IBAction func close() {
  dismiss(animated: true, completion: nil)
}

  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destination.
      // Pass the selected object to the new view controller.
  }
  */

}
