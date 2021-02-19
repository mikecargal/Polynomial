//
//  PolyListener.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/18/21.
//

import Foundation

class MyPolyListener: PolyBaseListener {
    var terms: [PolynomialTerm] = []
    override func enterAddSub(_ ctx: PolyParser.AddSubContext) {
        print(ctx.getText())
        print("op=\(PolyLexer.ruleNames[ctx.op.getType() - 1]) (\(ctx.op.getType()):\(String(describing: ctx.op.getText()))")
    }

    override func enterCTerm(_ ctx: PolyParser.CTermContext) {
        self.terms.append(ctx.term())
    }

    override func enterVdTerm(_ ctx: PolyParser.VdTermContext) {
        self.terms.append(ctx.term())
    }

    override func enterCvTerm(_ ctx: PolyParser.CvTermContext) {
        self.terms.append(ctx.term())
    }

    override func enterCvdTerm(_ ctx: PolyParser.CvdTermContext) {
        self.terms.append(ctx.term())
    }
}
