/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabalho2;

import java.util.List;

/**
 *
 * @author daniellucredio
 */
public class LuazinhaSemanticAnalyzer extends LuazinhaBaseVisitor<Void> {
    // Não esqueça de colocar os RAs do seu grupo na variável a seguir
    public static String grupo = "740951 743602 743586";

    PilhaDeTabelas pilhaDeTabelas = new PilhaDeTabelas();
    
    /*
    Adiciona ao escopo global.
    */
    @Override
    public Void visitPrograma(LuazinhaParser.ProgramaContext ctx) {
        pilhaDeTabelas.empilhar(new TabelaDeSimbolos("global"));
        
        super.visitPrograma(ctx);
        
        pilhaDeTabelas.desempilhar();
        return null;
    }

    /*
    Adiciona a declaração da função ao escopo correto e se tiver ':' adiciona o parametro self
    */
    @Override
    public Void visitComandoFunction(LuazinhaParser.ComandoFunctionContext ctx) {
        pilhaDeTabelas.empilhar(new TabelaDeSimbolos(ctx.nomedafuncao().nome));
        
        if(ctx.nomedafuncao().metodo){
            TabelaDeSimbolos tabela= pilhaDeTabelas.topo();
            tabela.adicionarSimbolo("self","parametro");
        }

        super.visitComandoFunction(ctx);

        pilhaDeTabelas.desempilhar();
        return null;

    }
    
    /*Sem este override, o comportamento padrao de ComandoAtribuicao seria visitar primeiro ListaVar, o lado esquerdo da atribuiçao,
    e depois Listaexp, o lado direito. O problema com esta abordagem é nos casos onde uma variavel esta sendo inicializada referenciando a si propria
    , por exemplo, x = x+1. Na abordagem padrao, o lado esquerdo seria visitado primeiro, e a variavel x amarrada ao escopo mais proximo. O lado
    direito da atribuiçao seria visitado logo apos e nao encontraria erro por x estar na pilha de tabelas.
    Portanto, para detectar que a variavel esta sendo inicializada com uma variavel nao amarrada, basta inverter a ordem de visita e x nao mais seria
    considerada uma variavel amarrada na pilha de tabelas.
    */
    @Override
    public Void visitComandoAtribuicao(LuazinhaParser.ComandoAtribuicaoContext ctx) {
        visitListaexp(ctx.listaexp());
        visitListavar(ctx.listavar());
        
        return null;
    }
    
    /*
    Declara as variáveis
    */
    @Override
    public Void visitListavar(LuazinhaParser.ListavarContext ctx){
        for (String nome : ctx.nomes) {
            if (!pilhaDeTabelas.existeSimbolo(nome)) {
                pilhaDeTabelas.topo().adicionarSimbolo(nome, "variavel");
            }
        }
        return super.visitChildren(ctx);

    }

    /*
    Declara lista de variáveis.
    */
    @Override
    public Void visitListaParListaDeNomes(LuazinhaParser.ListaParListaDeNomesContext ctx){
       TabelaDeSimbolos tabela= pilhaDeTabelas.topo();

        tabela.adicionarSimbolos(ctx.listadenomes().nomes,"parametro");

        super.visitListaParListaDeNomes(ctx);
        return null;
    }
    
    //Comando for1 = 'for' NOME '=' exp ',' exp (',' exp)? 'do' bloco 'end'
    @Override
    public Void visitComandoFor1(LuazinhaParser.ComandoFor1Context ctx){
        //Empilha uma nova tabela de simbolos, representando o escopo do for
        pilhaDeTabelas.empilhar(new TabelaDeSimbolos("for"));

        //Adiciona o nome da variavel do for na tabela
        pilhaDeTabelas.topo().adicionarSimbolo(ctx.NOME().toString(), "variavel");
        
        super.visitChildren(ctx);
        pilhaDeTabelas.desempilhar();
        return null;
    }
    
    //Comando for2 = 'for' listadenomes 'in' listaexp 'do' bloco 'end'
    @Override
    public Void visitComandoFor2(LuazinhaParser.ComandoFor2Context ctx){
        //Empilha uma nova tabela de simbolos, representando o escopo do for
        pilhaDeTabelas.empilhar(new TabelaDeSimbolos("for"));
        
        /*Visitando Listaexp antes de listavar para ter certeza de que as variaveis em listavar ja foram
        propriamente amarradas anteriormente */
        visitListaexp(ctx.listaexp());
        
        //Caso sim, os nomes das variaveis do 'for' sao adicionados à tabela
        for(String nome : ctx.listadenomes().nomes){
            pilhaDeTabelas.topo().adicionarSimbolo(nome, "variavel");
        }
        
        // Basta visitar o resto dos filhos na ordem padrao da regra
        visitListadenomes(ctx.listadenomes());
        visitBloco(ctx.bloco());
        pilhaDeTabelas.desempilhar();
        return null;
    }
    
    // Para atribuição local. 'local' listadenomes ('=' listaexp)? 
    @Override
    public Void visitComandoLocalAtribuicao(LuazinhaParser.ComandoLocalAtribuicaoContext ctx){
        //Pega todos os nomes da atribuição
        List<String> nomes = ctx.listadenomes().nomes;
        super.visitListaexp(ctx.listaexp()); // explora a lista de expressoes
        for(String var : nomes){
            //Adiciona cada nome como uma variável na pilha de tabelas
            pilhaDeTabelas.topo().adicionarSimbolo(var, "variavel");
        }

        return null;
    }
    
    @Override
    public Void visitExpPrefixo2Var(LuazinhaParser.ExpPrefixo2VarContext ctx) {
        
        /* Aqui ocorre a checagem da existência da variavel sendo visitada na pilha de tabelas*/
        if(!pilhaDeTabelas.existeSimbolo(ctx.var().nome)) {
            //Caso nao esteja presente, é impresso o erro contendo a variavel em questao e sua posicao no texto.
            Mensagens.erroVariavelNaoExiste(ctx.var().linha, ctx.var().coluna, ctx.var().nome);
        }
        super.visitChildren(ctx);
        return null;
    }

}
