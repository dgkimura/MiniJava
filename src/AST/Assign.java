package AST;
import AST.Visitor.Visitor;

public class Assign extends Statement {
  public Identifier i;
  public Exp e;

  public Assign(Identifier ai, Exp ae, int ln) {
    super(ln);
    i=ai; e=ae; 
  }

  public void accept(Visitor v) {
    v.visit(this);
  }
}

