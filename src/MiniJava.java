import java.io.File;
import java.io.PrintStream;
import AST.Program;
import AST.Visitor.*;
import Parser.parser;
import Scanner.scanner;
import Throwables.*;

public class MiniJava {
    public static void main(String[] args) {
        try {
            parser p = new parser(new scanner(System.in));
            Program prog = (Program)(p.parse().value);

            TypeVisitor typeInfo = new TypeVisitor();
            prog.accept(typeInfo);

//            VerifyTypeVisitor verifyTypeInfo = new VerifyTypeVisitor(typeInfo);
//            prog.accept(verifyTypeInfo);
//
//            int returnValue = verifyTypeInfo.getReturnValue();
//            if (returnValue != 0) {
//                System.exit(returnValue);
//            }

            CodeGeneratorVisitor codeGenerator = new CodeGeneratorVisitor(typeInfo);
            prog.accept(codeGenerator);

            PrintStream out;
            if (args.length >= 1) {
                out = new PrintStream(new File(args[0]));
            } else {
                out = System.out;
            }
            for (String line : codeGenerator.getCode()) {
                out.println(line);
            }
            out.close();
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
