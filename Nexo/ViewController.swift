//
//  ViewController.swift
//  Nexo
//
//  Created by Heitor on 25/11/26.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadHTML()
        
    }
    
    func loadHTML() {
        guard let htmlURL = Bundle.main.url(
            forResource: "index",
            withExtension: "html"
        ) else {
            print("Arquivo HTML não encontrado.")
            return
        }

        webView.loadFileURL(
            htmlURL,
            allowingReadAccessTo: Bundle.main.resourceURL!
        )
    }


    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

