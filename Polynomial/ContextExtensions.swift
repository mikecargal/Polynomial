//
//  ContextExtensions.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/19/21.
//

import Antlr4
import Foundation

protocol IntProvider {
    func value() -> Int
}

protocol DoubleProvider {
    func value() -> Double
}

extension PolyParser.CoefficientContext: DoubleProvider {
    func value() -> Double {
        let src = INT()?.getText() ?? DECIMAL()!.getText()
        return Double(src)!
    }
}

extension PolyParser.DegreeContext: IntProvider {
    func value() -> Int {
        return Int(INT()!.getText())!
    }
}

protocol TermProvider {
    func term() -> PolynomialTerm
}

extension PolyParser.FullTermContext: TermProvider {
    func term() -> PolynomialTerm {
        return self.term()!.term()
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
                              coefficient: coefficient()!.value(),
                              degree: 0)
    }
}

extension PolyParser.CvTermContext {
    func cvTerm() -> PolynomialTerm {
        return PolynomialTerm(VAR()!.getText(),
                              coefficient: coefficient()!.value(),
                              degree: 1)
    }
}

extension PolyParser.VdTermContext {
    func vdTerm() -> PolynomialTerm {
        return PolynomialTerm(VAR()!.getText(),
                              coefficient: 1,
                              degree: degree()!.value())
    }
}

extension PolyParser.CvdTermContext {
    func cvdTerm() -> PolynomialTerm {
        PolynomialTerm(VAR()!.getText(),
                       coefficient: coefficient()!.value(),
                       degree: degree()!.value())
    }
}

protocol PolynomialExprProvider {
    func pExpr() -> PolynomialExpr
}

extension PolyParser.FullPExprContext: PolynomialExprProvider {
    func pExpr() -> PolynomialExpr {
        self.pExpr()!.pExpr()
    }
}

extension PolyParser.PExprContext: PolynomialExprProvider {
    func pExpr() -> PolynomialExpr {
        switch self {
        case let ctx as PolyParser.ParenPExprContext:
            return ctx.parenPExpr()
        case let ctx as PolyParser.MulDivContext:
            return ctx.mulDivPExpr()
        case let ctx as PolyParser.AddSubContext:
            return ctx.addSubPExpr()
        case let ctx as PolyParser.PTermContext:
            return ctx.termPExpr()
        default:
            preconditionFailure("unrecognized PolyNomialTypeÏ type \(self.debugDescription)")
        }
    }
}

extension PolyParser.ParenPExprContext {
    func parenPExpr() -> PolynomialExpr {
        // TODO:
        return PolynomialExpr([PolynomialTerm("x", coefficient: 1, degree: 1)])
    }
}

extension PolyParser.MulDivContext {
    func mulDivPExpr() -> PolynomialExpr {
        // TODO:
        return PolynomialExpr([PolynomialTerm("x", coefficient: 1, degree: 1)])
    }
}

extension PolyParser.AddSubContext {
    func addSubPExpr() -> PolynomialExpr {
        // TODO:
        return PolynomialExpr([PolynomialTerm("x", coefficient: 1, degree: 1)])
    }
}

extension PolyParser.PTermContext {
    func termPExpr() -> PolynomialExpr {
        // TODO:
        return PolynomialExpr([PolynomialTerm("x", coefficient: 1, degree: 1)])
    }
}
