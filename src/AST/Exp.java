package AST;
import AST.Visitor.Visitor;

public abstract class Exp extends ASTNode {
    public Exp(int ln) {
        super(ln);
    }
    public abstract void accept(Visitor v);
}
