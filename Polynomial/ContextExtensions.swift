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

extension PolyParser.CTermContext: TermProvider {
    func term() -> PolynomialTerm {
        return PolynomialTerm(nil,
                              coefficient: coefficient()!.int(),
                              degree: 0)
    }
}

extension PolyParser.CvTermContext: TermProvider {
    func term() -> PolynomialTerm {
        return PolynomialTerm(VAR()!.getText(),
                              coefficient: coefficient()!.int(),
                              degree: 1)
    }
}

extension PolyParser.VdTermContext: TermProvider {
    func term() -> PolynomialTerm {
        return PolynomialTerm(VAR()!.getText(),
                              coefficient: 1,
                              degree: degree()!.int())
    }
}

extension PolyParser.CvdTermContext: TermProvider {
    func term() -> PolynomialTerm {
        PolynomialTerm(VAR()!.getText(),
                       coefficient: coefficient()!.int(),
                       degree: degree()!.int())
    }
}

