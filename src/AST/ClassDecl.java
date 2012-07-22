package AST;
import AST.Visitor.Visitor;

public abstract class ClassDecl extends ASTNode{
  public ClassDecl(int ln) {
    super(ln);
  }
  public abstract void accept(Visitor v);
}
