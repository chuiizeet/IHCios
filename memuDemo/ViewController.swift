//
//  ViewController.swift
//  memuDemo
//
//  Created by Parth Changela on 09/10/16.
//  Copyright © 2016 Parth Changela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnMenuButton: UIBarButtonItem!
    
    
    let algebraExamen = "AlgebraExamen"
    let algebraTarea = "AlgebraTarea"
    let quimicaExamen = "QuimicaExamen"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            btnMenuButton.target = revealViewController()
            btnMenuButton.action = "revealToggle:"
            

            
            
        }
    }


    @IBAction func materialDeApoyoTareas(_ sender: Any) {
        
        if let url = Bundle.main.url(forResource: algebraTarea, withExtension: "pdf")
        {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = "Tarea de algebra"
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
        
    }
    
    
    @IBAction func examenAlgebra(_ sender: Any) {
        
        
        if let url = Bundle.main.url(forResource: algebraExamen, withExtension: "pdf")
        {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = "Examen de algebra"
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
        
    }
    
    
    @IBAction func examenQuimica(_ sender: Any) {
        
        
        if let url = Bundle.main.url(forResource: quimicaExamen, withExtension: "pdf")
        {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = "Examen de Química"
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
        
    }
    
    
}

