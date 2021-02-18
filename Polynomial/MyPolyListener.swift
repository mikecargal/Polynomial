//
//  PolyListener.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/18/21.
//

import Foundation

class MyPolyListener: PolyBaseListener {
    override func enterAddSub(_ ctx: PolyParser.AddSubContext) {
        print("op=\(ctx.op.getType().description)")
        if ctx.ADD() != nil {
            print("add")
        }
        if ctx.SUB() != nil {
            print("sub")
        }
    }

    override func enterInteger(_ ctx: PolyParser.IntegerContext) {
        print(" integer \(ctx.getText())")
    }

    override func enterX(_ ctx: PolyParser.XContext) {
        print("X -> \(ctx.getText())")

        if let children = ctx.children,
           children.count >= 2,
           let exp = ctx.children?[2]
        {
            print("\texp=\(exp)")
        }
    }
}
