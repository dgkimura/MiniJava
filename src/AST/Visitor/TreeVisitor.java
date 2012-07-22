package AST.Visitor;

import AST.*;

public class TreeVisitor implements Visitor {
    private int indentLevel;

    public TreeVisitor() {
        super();
        indentLevel = 0;
    }

    private void println(String message) {
        for (int i = 0; i < indentLevel; ++i) {
            System.out.print("    ");
        }
        System.out.println(message);
    }

    public void visit(Program n) {
        println("Program:");
        ++indentLevel;

        n.m.accept(this);
        
        ClassDeclList classes = n.cl;
        int size = classes.size();
        for (int i = 0; i < size; ++i) {
            classes.elementAt(i).accept(this);
        }

        --indentLevel;
    }

    public void visit(MainClass n) {
        println("main class named " + n.i1.s + ":");
        ++indentLevel;

        println("name of parameter to main() method: " + n.i2.s);

        println("body of main:");
        ++indentLevel;
        n.s.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(ClassDeclSimple n) {
        println("class of name " + n.i.s + ":");
        ++indentLevel;

        println("instance variables:");
        ++indentLevel;
        VarDeclList vars = n.vl;
        int varsize = vars.size();
        for (int i = 0; i < varsize; ++i) {
            vars.elementAt(i).accept(this);
        }
        --indentLevel;

        println("methods:");
        ++indentLevel;
        MethodDeclList methods = n.ml;
        int methodsize = methods.size();
        for (int i = 0; i < methodsize; ++i) {
            methods.elementAt(i).accept(this);
        }
        --indentLevel;

        --indentLevel;
    }

    public void visit(ClassDeclExtends n) {
        println("class of name " + n.i.s + ":");
        ++indentLevel;

        println("parent class: " + n.j.s);

        println("instance variables:");
        ++indentLevel;
        VarDeclList vars = n.vl;
        int varsize = vars.size();
        for (int i = 0; i < varsize; ++i) {
            vars.elementAt(i).accept(this);
        }
        --indentLevel;

        println("methods:");
        ++indentLevel;
        MethodDeclList methods = n.ml;
        int methodsize = methods.size();
        for (int i = 0; i < methodsize; ++i) {
            methods.elementAt(i).accept(this);
        }
        --indentLevel;

        --indentLevel;
    }

    public void visit(VarDecl n) {
        println("declare " + n.i.s + " of type:");
        ++indentLevel;
        n.t.accept(this);
        --indentLevel;
    }

    public void visit(MethodDecl n) {
        println("method named " + n.i.s + ":");
        ++indentLevel;

        println("return type:");
        ++indentLevel;
        n.t.accept(this);
        --indentLevel;

        println("parameters:");
        ++indentLevel;
        FormalList formals = n.fl;
        int formalsize = formals.size();
        for (int i = 0; i < formalsize; ++i) {
            formals.elementAt(i).accept(this);
        }
        --indentLevel;

        println("variables:");
        ++indentLevel;
        VarDeclList vars = n.vl;
        int varsize = vars.size();
        for (int i = 0; i < varsize; ++i) {
            vars.elementAt(i).accept(this);
        }
        --indentLevel;

        println("statements:");
        ++indentLevel;
        StatementList stmts = n.sl;
        int stmtsize = stmts.size();
        for (int i = 0; i < stmtsize; ++i) {
            stmts.elementAt(i).accept(this);
        }
        --indentLevel;

        println("return value:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(Formal n) {
        println("formal parameter " + n.i.s + " of type:");
        ++indentLevel;
        n.t.accept(this);
        --indentLevel;
    }

    public void visit(IntArrayType n) {
        println("integer array");
    }

    public void visit(BooleanType n) {
        println("boolean");
    }

    public void visit(IntegerType n) {
        println("int");
    }

    public void visit(IdentifierType n) {
        println("identifier type (" + n.s + ")");
    }

    public void visit(Block n) {
        println("block:");
        ++indentLevel;

        StatementList sl = n.sl;
        int size = sl.size();

        for (int i = 0; i < size; ++i) {
            sl.elementAt(i).accept(this);
        }

        --indentLevel;
    }

    public void visit(If n) {
        println("if:");
        ++indentLevel;

        println("condition:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;

        println("if true:");
        ++indentLevel;
        n.s1.accept(this);
        --indentLevel;

        println("if false:");
        ++indentLevel;
        n.s2.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(While n) {
        println("while:");
        ++indentLevel;

        println("condition:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;

        println("body:");
        ++indentLevel;
        n.s.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(Print n) {
        println("System.out.println:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;
    }

    public void visit(Assign n) {
        println("assignment of variable " + n.i.s + " to value:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;
    }

    public void visit(ArrayAssign n) {
        println("assignment to array " + n.i.s + ":");
        ++indentLevel;

        println("position in array:");
        ++indentLevel;
        n.e1.accept(this);
        --indentLevel;

        println("value:");
        ++indentLevel;
        n.e2.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(And n) {
        println("boolean and:");
        ++indentLevel;

        println("left side:");
        ++indentLevel;
        n.e1.accept(this);
        --indentLevel;

        println("right side:");
        ++indentLevel;
        n.e2.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(LessThan n) {
        println("less than:");
        ++indentLevel;

        println("left side:");
        ++indentLevel;
        n.e1.accept(this);
        --indentLevel;

        println("right side:");
        ++indentLevel;
        n.e2.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(Plus n) {
        println("addition:");
        ++indentLevel;

        println("left side:");
        ++indentLevel;
        n.e1.accept(this);
        --indentLevel;

        println("right side:");
        ++indentLevel;
        n.e2.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(Minus n) {
        println("subtraction:");
        ++indentLevel;

        println("left side:");
        ++indentLevel;
        n.e1.accept(this);
        --indentLevel;

        println("right side:");
        ++indentLevel;
        n.e2.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(Times n) {
        println("multiplication:");
        ++indentLevel;

        println("left side:");
        ++indentLevel;
        n.e1.accept(this);
        --indentLevel;

        println("right side:");
        ++indentLevel;
        n.e2.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(ArrayLookup n) {
        println("array lookup:");
        ++indentLevel;

        println("array:");
        ++indentLevel;
        n.e1.accept(this);
        --indentLevel;

        println("position:");
        ++indentLevel;
        n.e2.accept(this);
        --indentLevel;

        --indentLevel;
    }

    public void visit(ArrayLength n) {
        println("length of array:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;
    }

    public void visit(Call n) {
        println("method call:");
        ++indentLevel;

        println("invocant:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;

        println("method name: " + n.i.s);

        println("parameters:");
        ++indentLevel;
        ExpList exprs = n.el;
        int size = exprs.size();
        for (int i = 0; i < size; ++i) {
            exprs.elementAt(i).accept(this);
        }
        --indentLevel;

        --indentLevel;
    }

    public void visit(IntegerLiteral n) {
        println("integer literal: " + n.i);
    }

    public void visit(True n) {
        println("true");
    }

    public void visit(False n) {
        println("false");
    }

    public void visit(IdentifierExp n) {
        println("identifier: " + n.s);
    }

    public void visit(This n) {
        println("this");
    }

    public void visit(NewArray n) {
        println("new integer array with size:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;
    }

    public void visit(NewObject n) {
        println("new object of identifier:");
        ++indentLevel;
        n.i.accept(this);
        --indentLevel;
    }

    public void visit(Not n) {
        println("not:");
        ++indentLevel;
        n.e.accept(this);
        --indentLevel;
    }

    public void visit(Identifier n) {
        println("identifier: " + n.s);
    }

    public void visit(FloatLiteral n) {
        println("floating-point literal: " + n.f);
    }

    public void visit(FloatType n) {
        println("float");
    }
}

