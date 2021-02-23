//
//  Term.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/19/21.
//

import Foundation

//@available(*, deprecated)
//struct PolynomialTerm: Equatable {
//    let coefficient: Double
//    let v: String?
//    let degree: Int
//
//    init(_ v: String?, coefficient: Double, degree: Int) {
//        self.v = v
//        self.coefficient = coefficient
//        self.degree = degree
//      //  print(String(describing: self))
//    }
//
//    var description: String {
//        "\(self.coefficient)\(self.v ?? "")^\(self.degree)"
//    }
//
//    static func * (_ lhs: PolynomialTerm, _ rhs: PolynomialTerm) -> PolynomialTerm {
//        guard let lv = lhs.v ?? rhs.v,
//              let rv = rhs.v ?? lhs.v,
//              rv == lv
//        else {
//            preconditionFailure("Don't handle mixed variable polynomials yet")
//        }
//        return PolynomialTerm(lv,
//                              coefficient: lhs.coefficient * rhs.coefficient,
//                              degree: lhs.degree + rhs.degree)
//    }
//
//    static func + (_ lhs: PolynomialTerm, _ rhs: PolynomialTerm) -> PolynomialTerm {
//        guard lhs.degree == rhs.degree,
//              let lv = lhs.v ?? rhs.v,
//              let rv = rhs.v ?? lhs.v,
//              rv == lv
//        else {
//            preconditionFailure("incompatible terms for addition \(lhs) : \(rhs)")
//        }
//        return PolynomialTerm(lv,
//                              coefficient: lhs.coefficient + rhs.coefficient,
//                              degree: lhs.degree)
//    }
//
//    static func - (_ lhs: PolynomialTerm, _ rhs: PolynomialTerm) -> PolynomialTerm {
//        return lhs + PolynomialTerm(rhs.v,
//                                    coefficient: 0 - rhs.coefficient,
//                                    degree: rhs.degree)
//    }
//}
