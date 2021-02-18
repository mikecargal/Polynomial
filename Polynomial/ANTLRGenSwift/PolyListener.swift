// Generated from Polynomial/ANTLR/Poly.g4 by ANTLR 4.9
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link PolyParser}.
 */
public protocol PolyListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link PolyParser#polys}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPolys(_ ctx: PolyParser.PolysContext)
	/**
	 * Exit a parse tree produced by {@link PolyParser#polys}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPolys(_ ctx: PolyParser.PolysContext)
	/**
	 * Enter a parse tree produced by the {@code paren}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParen(_ ctx: PolyParser.ParenContext)
	/**
	 * Exit a parse tree produced by the {@code paren}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParen(_ ctx: PolyParser.ParenContext)
	/**
	 * Enter a parse tree produced by the {@code x}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterX(_ ctx: PolyParser.XContext)
	/**
	 * Exit a parse tree produced by the {@code x}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitX(_ ctx: PolyParser.XContext)
	/**
	 * Enter a parse tree produced by the {@code addSub}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAddSub(_ ctx: PolyParser.AddSubContext)
	/**
	 * Exit a parse tree produced by the {@code addSub}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAddSub(_ ctx: PolyParser.AddSubContext)
	/**
	 * Enter a parse tree produced by the {@code integer}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInteger(_ ctx: PolyParser.IntegerContext)
	/**
	 * Exit a parse tree produced by the {@code integer}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInteger(_ ctx: PolyParser.IntegerContext)
	/**
	 * Enter a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMulDiv(_ ctx: PolyParser.MulDivContext)
	/**
	 * Exit a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMulDiv(_ ctx: PolyParser.MulDivContext)
}