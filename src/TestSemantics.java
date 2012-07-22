import Scanner.*;
import Parser.*;
import AST.*;
import AST.Visitor.*;
import Throwables.*;
import java_cup.runtime.Symbol;
import java.util.*;

public class TestSemantics {
    public static void main(String[] args) {
        try {
            parser p = new parser(new scanner(System.in));
            Program prog = (Program)(p.parse().value);

            TypeVisitor typeInfo = new TypeVisitor();
            prog.accept(typeInfo);

            typeInfo.printTypes();

            VerifyTypeVisitor verifyTypeInfo = new VerifyTypeVisitor(typeInfo);
            prog.accept(verifyTypeInfo);

            int returnValue = verifyTypeInfo.getReturnValue();
            if (returnValue != 0) {
                System.exit(returnValue);
            }
        } catch (CompilerException e) {
            // an error in the user's arguments or input, or some
            // other kind of error that we've already handled in the
            // appropriate way (not a bug that the error got here)
            System.err.println(e.getMessage());
        } catch (Exception e) {
            // yuck: some kind of error in the compiler implementation
            // that we're not expecting (a bug!)
            System.err.println("Unexpected internal compiler error: " + 
                               e.toString());
            // print out a stack dump
            e.printStackTrace();
        }
    }
}
