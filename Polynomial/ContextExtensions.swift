//
//  ContextExtensions.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/19/21.
//

import Antlr4
import Foundation

protocol IntProvider {
    func int() -> Int
}

extension PolyParser.CoefficientContext: IntProvider {
    func int() -> Int {
        return Int(INT()!.getText())!
    }
}

extension PolyParser.DegreeContext: IntProvider {
    func int() -> Int {
        return Int(INT()!.getText())!
    }
}

protocol TermProvider {
    func term() -> PolynomialTerm
}

extension PolyParser.FullTermContext: TermProvider {
    func term() -> PolynomialTerm {
        return term()!.term()
    }
}

extension PolyParser.TermContext: TermProvider {
    func term() -> PolynomialTerm {
        switch self {
        case let ctx as PolyParser.CTermContext:
            return ctx.cTerm()
        case let ctx as PolyParser.CvTermContext:
            return ctx.cvTerm()
        case let ctx as PolyParser.VdTermContext:
            return ctx.vdTerm()
        case let ctx as PolyParser.CvdTermContext:
            return ctx.cvdTerm()
        default:
            preconditionFailure("unrecognized Term type \(self.debugDescription)")
        }
    }
}

extension PolyParser.CTermContext {
    func cTerm() -> PolynomialTerm {
        return PolynomialTerm(nil,
                              coefficient: coefficient()!.int(),
                              degree: 0)
    }
}

extension PolyParser.CvTermContext {
    func cvTerm() -> PolynomialTerm {
        return PolynomialTerm(VAR()!.getText(),
                              coefficient: coefficient()!.int(),
                              degree: 1)
    }
}

extension PolyParser.VdTermContext {
    func vdTerm() -> PolynomialTerm {
        return PolynomialTerm(VAR()!.getText(),
                              coefficient: 1,
                              degree: degree()!.int())
    }
}

extension PolyParser.CvdTermContext {
    func cvdTerm() -> PolynomialTerm {
        PolynomialTerm(VAR()!.getText(),
                       coefficient: coefficient()!.int(),
                       degree: degree()!.int())
    }
}

extension PolyParser.FullPExprContext {
    
}
