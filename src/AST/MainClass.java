package AST;
import AST.Visitor.Visitor;

public class MainClass extends ASTNode{
  public Identifier i1,i2;
  public Statement s;

  public MainClass(Identifier ai1, Identifier ai2, Statement as, int ln) {
    super(ln);
    i1=ai1; i2=ai2; s=as;
  }

  public void accept(Visitor v) {
    v.visit(this);
  }
}

