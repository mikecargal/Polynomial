//
//  ViewController.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/18/21.
//

import Antlr4
import Cocoa

class ViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let inputStream = ANTLRInputStream("(x^5 + -1) * (2*x^2+3)+1/2*x")
        let lexer = PolyLexer(inputStream)
        let tokenStream = CommonTokenStream(lexer)

        do {
            let parser = try PolyParser(tokenStream)
            let poly = try parser.pExpr()
            print("parsed \(poly.getText())")
            print("\(poly.debugDescription)")
            let walker = ParseTreeWalker()
            let listener = MyPolyListener()
            try walker.walk(listener, poly)

        } catch {
            print("error creating Parser (\(error))")
        }
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}
