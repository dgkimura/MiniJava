package AST;
import AST.Visitor.Visitor;

public class Block extends Statement {
  public StatementList sl;

  public Block(StatementList asl, int ln) {
    super(ln);
    sl=asl;
  }

  public void accept(Visitor v) {
    v.visit(this);
  }
}

