//
//  ViewController.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/18/21.
//

import Antlr4
import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var textInput: NSTextField!
    @IBOutlet weak var ParseButton: NSButton!
    @IBOutlet weak var messageLabel: NSTextField!
    @IBAction func parseClicked(_ sender: NSButton) {
        print("parse \"\(textInput.stringValue)\"")
        parseInput()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let polyText = "(x^5 + -1) * (2*x^2+3)+1/2*x"
        textInput.stringValue = polyText
    }
    
    func parseInput() {
        let source = textInput.stringValue
        let inputStream = ANTLRInputStream(source)
        let lexer = PolyLexer(inputStream)
        let tokenStream = CommonTokenStream(lexer)
        do {
            let parser = try PolyParser(tokenStream)
            let poly = try parser.pExpr()
            print("parsed \(poly.getText())")
            messageLabel.stringValue = "Succesful Parse"
            print("\(poly.debugDescription)")
            let walker = ParseTreeWalker()
            let listener = MyPolyListener()
            try walker.walk(listener, poly)

        } catch {
            print("error creating Parser (\(error))")
            messageLabel.stringValue = error.localizedDescription
        }
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}
