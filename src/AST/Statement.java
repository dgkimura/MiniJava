package AST;
import AST.Visitor.Visitor;

public abstract class Statement extends ASTNode {
    public Statement(int ln) {
        super(ln);
    }
    public abstract void accept(Visitor v);
}
