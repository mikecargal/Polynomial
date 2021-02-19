//
//  ViewController.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/18/21.
//

import Antlr4
import Cocoa

class ViewController: NSViewController {
    @IBOutlet var textInput: NSTextField!
    @IBOutlet var ParseButton: NSButton!
    @IBOutlet var messageLabel: NSTextField!
    @IBOutlet var clipView: NSClipView!
    @IBOutlet var errorView: NSScrollView!
    @IBOutlet var textView: NSTextView!

    @IBAction func parseClicked(_ sender: NSButton) {
        print("parse \"\(textInput.stringValue)\"")
        parseInput()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // let polyText = "(x^5 + -1) * (2*x^2+3)+1/2*x"
        let polyText = "2*a^2*(4a^2-3a^2+5)-6a*(a^4-2a^3-2)"
        textInput.stringValue = polyText
    }

    func parseInput() {
        let source = textInput.stringValue
        let inputStream = ANTLRInputStream(source)
        let lexer = PolyLexer(inputStream)
        let tokenStream = CommonTokenStream(lexer)
        do {
            let parser = try PolyParser(tokenStream)
            let errorListener = MyErrorListener()
            parser.addErrorListener(errorListener)
            let poly = try parser.pExpr()
            print(poly.toStringTree(parser))
            messageLabel.stringValue = errorListener.errorMessages.count == 0
                ? "Succesful Parse"
                : "Parse failed"

            print("=========")
            for msg in errorListener.errorMessages {
                print(msg)
            }
            textView.string = errorListener.errorMessages.joined(separator: "\n")
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
