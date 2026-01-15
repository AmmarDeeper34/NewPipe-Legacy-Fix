.class public Lorg/mozilla/javascript/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Parser$CurrentPositionReporter;,
        Lorg/mozilla/javascript/Parser$ParserException;,
        Lorg/mozilla/javascript/Parser$PerFunctionVariables;,
        Lorg/mozilla/javascript/Parser$ConditionData;,
        Lorg/mozilla/javascript/Parser$Transformer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ARGC_LIMIT:I = 0x10000

.field static final CLEAR_TI_MASK:I = 0xffff

.field private static final GET_ENTRY:I = 0x2

.field private static final METHOD_ENTRY:I = 0x8

.field private static final PROP_ENTRY:I = 0x1

.field private static final SET_ENTRY:I = 0x4

.field static final TI_AFTER_EOL:I = 0x10000

.field static final TI_CHECK_LABEL:I = 0x20000


# instance fields
.field calledByCompileFunction:Z

.field compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private currentFlaggedToken:I

.field private currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

.field private currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

.field currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

.field currentScope:Lorg/mozilla/javascript/ast/Scope;

.field currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private currentToken:I

.field private defaultUseStrictDirective:Z

.field private endFlags:I

.field private errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private inDestructuringAssignment:Z

.field private inForInit:Z

.field protected inUseStrictDirective:Z

.field private insideMethod:Z

.field private labelSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/ast/LabeledStatement;",
            ">;"
        }
    .end annotation
.end field

.field private lastTokenColumn:I

.field private lastTokenLineno:I

.field private loopAndSwitchSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Jump;",
            ">;"
        }
    .end annotation
.end field

.field private loopSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Loop;",
            ">;"
        }
    .end annotation
.end field

.field protected nestingOfFunction:I

.field protected nestingOfFunctionParams:I

.field private parseFinished:Z

.field private prevNameTokenColumn:I

.field private prevNameTokenLineno:I

.field private prevNameTokenStart:I

.field private prevNameTokenString:Ljava/lang/String;

.field private scannedComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private sourceChars:[C

.field private sourceURI:Ljava/lang/String;

.field private syntaxErrorCount:I

.field private ts:Lorg/mozilla/javascript/TokenStream;


# direct methods
.method static bridge synthetic -$$Nest$fgetendFlags(Lorg/mozilla/javascript/Parser;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinForInit(Lorg/mozilla/javascript/Parser;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlabelSet(Lorg/mozilla/javascript/Parser;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloopAndSwitchSet(Lorg/mozilla/javascript/Parser;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloopSet(Lorg/mozilla/javascript/Parser;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputendFlags(Lorg/mozilla/javascript/Parser;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinForInit(Lorg/mozilla/javascript/Parser;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlabelSet(Lorg/mozilla/javascript/Parser;Ljava/util/Map;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloopAndSwitchSet(Lorg/mozilla/javascript/Parser;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloopSet(Lorg/mozilla/javascript/Parser;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 176
    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 1

    .line 180
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lorg/mozilla/javascript/Parser;->lastTokenLineno:I

    .line 162
    iput v0, p0, Lorg/mozilla/javascript/Parser;->lastTokenColumn:I

    .line 184
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 185
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    .line 186
    instance-of p1, p2, Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_0

    .line 187
    check-cast p2, Lorg/mozilla/javascript/ast/IdeErrorReporter;

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    :cond_0
    return-void
.end method

.method private addError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 1

    .line 295
    iget v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    .line 296
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 297
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_0

    .line 298
    iget-object p5, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, p2, p5, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 300
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    move p4, p5

    move-object p5, p6

    move p6, p7

    invoke-interface/range {p1 .. p6}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private addExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2705
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mulExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2707
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x15

    if-eq v1, v3, :cond_1

    const/16 v3, 0x16

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    .line 2709
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2710
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mulExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private addStrictWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct/range {p0 .. p7}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private addWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 8

    move-object v2, p2

    .line 277
    invoke-virtual {p0, p1, v2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 278
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->reportWarningAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 279
    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    return-void

    :cond_0
    move-object v0, p0

    move v3, p3

    move v4, p4

    move p4, p5

    move-object p5, p6

    move p6, p7

    .line 280
    iget-object p1, v0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_1

    .line 281
    iget-object p3, v0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v3, v4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 283
    :cond_1
    iget-object p1, v0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object p3, v0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface/range {p1 .. p6}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private andExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2606
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitOrExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x76

    .line 2607
    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2608
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2609
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->andExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    return-object v3

    :cond_0
    return-object v0
.end method

.method private argumentList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x61

    const/4 v1, 0x1

    .line 2880
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2882
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2883
    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v4, 0x0

    .line 2884
    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2887
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    if-ne v5, v0, :cond_2

    goto :goto_2

    .line 2891
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_3

    .line 2892
    const-string v5, "msg.yield.parenthesized"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2894
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    .line 2895
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x84

    if-ne v6, v7, :cond_4

    .line 2897
    :try_start_1
    invoke-direct {p0, v5, v4, v1}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2902
    :cond_4
    :try_start_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :goto_1
    const/16 v5, 0x62

    .line 2904
    invoke-direct {p0, v5, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    .line 2906
    :goto_2
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2909
    const-string v3, "msg.no.paren.arg"

    invoke-direct {p0, v0, v3, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    return-object v2

    .line 2906
    :goto_3
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2907
    throw v0
.end method

.method private arrayComprehension(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    .line 3575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3576
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x84

    if-ne v1, v2, :cond_0

    .line 3577
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->arrayComprehensionLoop()Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3581
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 3582
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3583
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    .line 3584
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 3586
    :goto_1
    const-string v3, "msg.no.bracket.arg"

    const/4 v4, 0x1

    const/16 v5, 0x5d

    invoke-direct {p0, v5, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 3587
    new-instance v3, Lorg/mozilla/javascript/ast/ArrayComprehension;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v4, p2

    invoke-direct {v3, p2, v4}, Lorg/mozilla/javascript/ast/ArrayComprehension;-><init>(II)V

    .line 3588
    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setResult(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3589
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setLoops(Ljava/util/List;)V

    if-eqz v2, :cond_2

    .line 3591
    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setIfPosition(I)V

    .line 3592
    iget-object p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilter(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3593
    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilterLp(I)V

    .line 3594
    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilterRp(I)V

    :cond_2
    return-object v3
.end method

.method private arrayComprehensionLoop()Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    .locals 13

    .line 3600
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 3601
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3604
    new-instance v1, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;-><init>(I)V

    .line 3606
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v2, 0x2c

    const/4 v3, 0x1

    .line 3608
    :try_start_0
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "msg.no.paren.for"

    const/4 v6, -0x1

    if-eqz v4, :cond_2

    .line 3609
    :try_start_1
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "each"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3610
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 3612
    :cond_1
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_2
    const/4 v4, -0x1

    :goto_0
    const/16 v7, 0x60

    .line 3615
    invoke-direct {p0, v7, v5, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3616
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v0

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    .line 3620
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v7

    if-eq v7, v2, :cond_5

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_4

    const/16 v8, 0x5e

    if-eq v7, v8, :cond_4

    .line 3632
    const-string v7, "msg.bad.var"

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_2

    .line 3624
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    .line 3625
    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_2

    .line 3628
    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3629
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v7

    .line 3637
    :goto_2
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v8

    if-ne v8, v2, :cond_6

    .line 3638
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa7

    invoke-virtual {p0, v9, v8, v3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 3641
    :cond_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v2, :cond_8

    const/16 v2, 0x39

    if-eq v8, v2, :cond_7

    goto :goto_4

    .line 3643
    :cond_7
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    :goto_3
    const/4 v8, 0x0

    goto :goto_5

    .line 3646
    :cond_8
    const-string v2, "of"

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eq v4, v6, :cond_9

    .line 3648
    const-string v2, "msg.invalid.for.each"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3650
    :cond_9
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    const/4 v8, 0x1

    goto :goto_5

    .line 3656
    :cond_a
    :goto_4
    const-string v2, "msg.in.after.for.name"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_3

    .line 3658
    :goto_5
    invoke-direct {p0, v9}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    .line 3659
    const-string v11, "msg.no.paren.for.ctrl"

    const/16 v12, 0x61

    invoke-direct {p0, v12, v11, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v11, v0

    goto :goto_6

    :cond_b
    const/4 v11, -0x1

    .line 3661
    :goto_6
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v12, v12, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v12, v0

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 3662
    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3663
    invoke-virtual {v1, v10}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3664
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    .line 3665
    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/ForInLoop;->setEachPosition(I)V

    if-eq v4, v6, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    .line 3666
    :goto_7
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForEach(Z)V

    .line 3667
    invoke-virtual {v1, v5, v11}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    .line 3668
    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForOf(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3671
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :goto_8
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 3672
    throw v0
.end method

.method private arrayLiteral()Lorg/mozilla/javascript/ast/AstNode;
    .locals 14

    .line 3513
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 3514
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    .line 3515
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3516
    new-instance v5, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/ast/ArrayLiteral;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_0
    const/4 v11, -0x1

    .line 3521
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v12

    const/16 v13, 0x62

    if-ne v12, v13, :cond_2

    .line 3523
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3524
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    .line 3528
    :cond_1
    new-instance v12, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v13, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v13, v13, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v12, v13, v8}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/16 v13, 0xaf

    if-ne v12, v13, :cond_3

    .line 3532
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_1

    :cond_3
    const/16 v13, 0x5d

    if-ne v12, v13, :cond_4

    .line 3534
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3540
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 3541
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setDestructuringLength(I)V

    .line 3542
    invoke-virtual {v5, v10}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setSkipCount(I)V

    if-eq v11, v7, :cond_6

    .line 3543
    invoke-direct {p0, v1, v4, v11}, Lorg/mozilla/javascript/Parser;->warnTrailingComma(ILjava/util/List;I)V

    goto :goto_2

    :cond_4
    const/16 v11, 0x84

    if-ne v12, v11, :cond_5

    if-nez v9, :cond_5

    .line 3545
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v8, :cond_5

    .line 3546
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->arrayComprehension(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3547
    :cond_5
    const-string v11, "msg.no.bracket.arg"

    if-nez v12, :cond_8

    .line 3548
    invoke-virtual {p0, v11}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3559
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/AstNode;

    .line 3560
    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/ArrayLiteral;->addElement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_3

    :cond_7
    sub-int/2addr v0, v1

    .line 3562
    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 3563
    invoke-virtual {v5, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v5

    :cond_8
    if-nez v9, :cond_9

    .line 3552
    invoke-virtual {p0, v11}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3554
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private arrowFunction(Lorg/mozilla/javascript/ast/AstNode;II)Lorg/mozilla/javascript/ast/AstNode;
    .locals 12

    .line 1060
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    if-eqz p1, :cond_0

    .line 1062
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 1064
    :goto_0
    new-instance v3, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>(I)V

    const/4 v8, 0x4

    .line 1065
    invoke-virtual {v3, v8}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    .line 1066
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 1070
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1071
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1072
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1074
    new-instance v9, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v9, p0, v3}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    .line 1078
    :try_start_0
    instance-of v2, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_3

    .line 1079
    :try_start_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lorg/mozilla/javascript/ast/FunctionNode;->setParens(II)V

    const/16 v2, 0x1c

    .line 1080
    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_1

    .line 1081
    invoke-virtual {v3, v2, v10}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    .line 1083
    :cond_1
    :goto_1
    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1084
    instance-of p1, v4, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-nez p1, :cond_2

    move-object v2, p0

    .line 1085
    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v2, p0

    goto :goto_2

    :cond_3
    move-object v2, p0

    move-object v4, p1

    .line 1088
    :try_start_2
    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    .line 1092
    :goto_2
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1093
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x62

    invoke-direct {p1, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1095
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1098
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/AstNode;

    .line 1103
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mozilla/javascript/Node;

    .line 1104
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/16 v11, 0x87

    .line 1101
    invoke-virtual {p0, v11, v10, v5, v7}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 1106
    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_4
    move-object p1, v0

    goto :goto_5

    :cond_4
    const/16 v4, 0x17

    .line 1108
    invoke-virtual {v3, v4, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1111
    :cond_5
    invoke-direct {p0, v8, v3}, Lorg/mozilla/javascript/Parser;->parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    .line 1112
    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1113
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p1

    add-int/2addr v4, p1

    .line 1114
    invoke-virtual {v3, v1, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->setRawSourceBounds(II)V

    sub-int/2addr v4, v1

    .line 1115
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1117
    invoke-virtual {v9}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    .line 1120
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1121
    const-string p1, "msg.arrowfunction.generator"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1122
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    .line 1125
    :cond_6
    iget-object p1, v2, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->setBaseLineno(I)V

    .line 1127
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    .line 1128
    invoke-virtual {v3, p2, p3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v3

    :catchall_2
    move-exception v0

    move-object v2, p0

    goto :goto_4

    .line 1117
    :goto_5
    invoke-virtual {v9}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    .line 1118
    throw p1
.end method

.method private arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ast/FunctionNode;",
            "Lorg/mozilla/javascript/ast/AstNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Node;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1140
    instance-of v0, p2, Lorg/mozilla/javascript/ast/ArrayLiteral;

    const/4 v1, 0x0

    const/16 v2, 0x60

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/mozilla/javascript/ast/ObjectLiteral;

    if-eqz v0, :cond_1

    :cond_0
    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    goto/16 :goto_1

    .line 1146
    :cond_1
    instance-of v0, p2, Lorg/mozilla/javascript/ast/InfixExpression;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v3, 0x62

    if-ne v0, v3, :cond_2

    .line 1147
    check-cast p2, Lorg/mozilla/javascript/ast/InfixExpression;

    .line 1149
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1147
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    move-object v6, v3

    move-object v7, v4

    move-object v8, v5

    move-object v4, v1

    .line 1155
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    move-object v3, p0

    .line 1153
    invoke-direct/range {v3 .. v8}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    return-void

    :cond_2
    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 1159
    instance-of p1, p2, Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_7

    .line 1160
    invoke-virtual {v4, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1161
    check-cast p2, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 1162
    invoke-virtual {p0, v2, p1}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    .line 1164
    iget-boolean p2, v3, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz p2, :cond_6

    .line 1165
    const-string p2, "eval"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "arguments"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1166
    :cond_3
    const-string p2, "msg.bad.id.strict"

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :cond_4
    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "msg.dup.param.strict"

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_5
    invoke-interface {v8, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    .line 1171
    :cond_7
    instance-of p1, p2, Lorg/mozilla/javascript/ast/Assignment;

    const-string p3, "msg.no.parm"

    if-eqz p1, :cond_c

    .line 1172
    iget-object p1, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    const/16 p4, 0xc8

    if-lt p1, p4, :cond_b

    .line 1173
    move-object p1, p2

    check-cast p1, Lorg/mozilla/javascript/ast/Assignment;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p4

    .line 1174
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    .line 1178
    instance-of p1, v5, Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_8

    .line 1179
    move-object p1, v5

    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 1180
    invoke-virtual {v4, p1, p4}, Lorg/mozilla/javascript/ast/FunctionNode;->putDefaultParams(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1181
    invoke-direct/range {v3 .. v8}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    return-void

    .line 1183
    :cond_8
    instance-of p1, v5, Lorg/mozilla/javascript/ast/ArrayLiteral;

    if-nez p1, :cond_a

    instance-of p1, v5, Lorg/mozilla/javascript/ast/ObjectLiteral;

    if-eqz p1, :cond_9

    goto :goto_0

    .line 1191
    :cond_9
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p2

    invoke-virtual {p0, p3, p1, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 1192
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void

    .line 1184
    :cond_a
    :goto_0
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1185
    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1186
    iget-object p1, v3, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object p1

    .line 1187
    invoke-virtual {p0, v2, p1, v1}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 1188
    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    invoke-interface {v7, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1195
    :cond_b
    const-string p1, "msg.default.args"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    .line 1198
    :cond_c
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p2

    invoke-virtual {p0, p3, p1, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 1199
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void

    .line 1141
    :goto_1
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1142
    invoke-virtual {v4, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1143
    iget-object p1, v3, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object p1

    .line 1144
    invoke-virtual {p0, v2, p1, v1}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 1145
    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private assignExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 8

    .line 2491
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x4e

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 2493
    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/Parser;->returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 2498
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getTokenColumn()I

    move-result v0

    .line 2500
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 2502
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 2505
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x63

    if-gt v7, v4, :cond_4

    const/16 v7, 0x72

    if-gt v4, v7, :cond_4

    .line 2508
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2511
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v0

    .line 2513
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2514
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2515
    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->isNotValidSimpleAssignmentTarget(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2516
    const-string v2, "msg.syntax.invalid.assignment.lhs"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2518
    :cond_2
    new-instance v2, Lorg/mozilla/javascript/ast/Assignment;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5, v1}, Lorg/mozilla/javascript/ast/Assignment;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    if-eqz v0, :cond_3

    .line 2521
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_3
    return-object v2

    :cond_4
    const/16 v7, 0x5b

    if-ne v4, v7, :cond_5

    .line 2526
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    if-eqz v0, :cond_7

    .line 2527
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    return-object v3

    :cond_5
    if-nez v6, :cond_6

    const/16 v6, 0xb2

    if-ne v4, v6, :cond_6

    .line 2530
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2531
    invoke-direct {p0, v3, v1, v0}, Lorg/mozilla/javascript/Parser;->arrowFunction(Lorg/mozilla/javascript/ast/AstNode;II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_6
    const/16 v0, 0x1d

    .line 2532
    invoke-virtual {v3, v0, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    if-nez v0, :cond_7

    .line 2534
    const-string v0, "msg.syntax"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_7
    return-object v3
.end method

.method private attributeAccess()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 3220
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    .line 3237
    const-string v0, "msg.no.name.after.xmlAttr"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3238
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 3234
    invoke-direct {p0, v1, v0, v2}, Lorg/mozilla/javascript/Parser;->xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;

    move-result-object v0

    return-object v0

    .line 3225
    :cond_1
    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3229
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    const-string v4, "*"

    invoke-direct {p0, v1, v4, v0, v2}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;II)V

    .line 3230
    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method private autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 4

    .line 1421
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekFlaggedToken()I

    move-result v0

    .line 1422
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_2

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 1441
    const-string p1, "msg.no.semi.stmt"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    .line 1443
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/Parser;->warnMissingSemi(II)V

    return-void

    .line 1426
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1428
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 1436
    invoke-static {p1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/Parser;->warnMissingSemi(II)V

    return-void
.end method

.method private bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2633
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->eqExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xb

    .line 2634
    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2635
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2636
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->eqExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private bitOrExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2615
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x9

    .line 2616
    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2617
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2618
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2624
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xa

    .line 2625
    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2626
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2627
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private block()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2153
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2154
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2155
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2156
    new-instance v1, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    .line 2157
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2158
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 2160
    :try_start_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    .line 2161
    const-string v2, "msg.no.brace.block"

    const/4 v3, 0x1

    const/16 v4, 0x5f

    invoke-direct {p0, v4, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 2162
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2165
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 2166
    throw v0
.end method

.method private breakStatement()Lorg/mozilla/javascript/ast/BreakStatement;
    .locals 8

    .line 1953
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x85

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1954
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1955
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    .line 1957
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v4

    const/16 v5, 0x2c

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 1958
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    .line 1959
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    move-object v1, v6

    .line 1963
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 1965
    :cond_2
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_5

    if-nez v1, :cond_5

    .line 1968
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 1971
    :cond_3
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/mozilla/javascript/ast/Jump;

    goto :goto_3

    .line 1969
    :cond_4
    :goto_2
    const-string v5, "msg.bad.break"

    sub-int v7, v4, v2

    invoke-virtual {p0, v5, v2, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 1976
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 1979
    :cond_6
    new-instance v5, Lorg/mozilla/javascript/ast/BreakStatement;

    sub-int/2addr v4, v2

    invoke-direct {v5, v2, v4}, Lorg/mozilla/javascript/ast/BreakStatement;-><init>(II)V

    .line 1980
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/BreakStatement;->setBreakLabel(Lorg/mozilla/javascript/ast/Name;)V

    if-eqz v6, :cond_7

    .line 1982
    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/BreakStatement;->setBreakTarget(Lorg/mozilla/javascript/ast/Jump;)V

    .line 1983
    :cond_7
    invoke-virtual {v5, v0, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v5
.end method

.method private checkBadIncDec(Lorg/mozilla/javascript/ast/UpdateExpression;)V
    .locals 2

    .line 4215
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UpdateExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 4216
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    .line 4222
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    const-string p1, "msg.bad.incr"

    goto :goto_0

    :cond_0
    const-string p1, "msg.bad.decr"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkCallRequiresActivation(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 3

    .line 4202
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2c

    const-string v2, "eval"

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4203
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    .line 4204
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4205
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    :cond_2
    return-void
.end method

.method private codeBug()Ljava/lang/RuntimeException;
    .locals 5

    .line 4816
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ts.cursor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ts.tokenBeg="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentToken="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private columnNumber()I
    .locals 1

    .line 413
    iget v0, p0, Lorg/mozilla/javascript/Parser;->lastTokenColumn:I

    return v0
.end method

.method private condExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    .line 2546
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nullishCoalescingExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/16 v1, 0x73

    const/4 v2, 0x1

    .line 2547
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2548
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2554
    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v4, 0x0

    .line 2555
    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2558
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/16 v3, 0x74

    .line 2562
    const-string v5, "msg.no.colon.cond"

    invoke-direct {p0, v3, v5, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 2563
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 2564
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v5

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v5

    .line 2565
    new-instance v7, Lorg/mozilla/javascript/ast/ConditionalExpression;

    invoke-direct {v7, v5, v6}, Lorg/mozilla/javascript/ast/ConditionalExpression;-><init>(II)V

    .line 2566
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2567
    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setTestExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2568
    invoke-virtual {v7, v4}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setTrueExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2569
    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setFalseExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    sub-int/2addr v1, v5

    .line 2570
    invoke-virtual {v7, v1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setQuestionMarkPosition(I)V

    sub-int/2addr v2, v5

    .line 2571
    invoke-virtual {v7, v2}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setColonPosition(I)V

    return-object v7

    :catchall_0
    move-exception v0

    .line 2560
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2561
    throw v0

    :cond_1
    return-object v0
.end method

.method private condition()Lorg/mozilla/javascript/Parser$ConditionData;
    .locals 5

    .line 1238
    new-instance v0, Lorg/mozilla/javascript/Parser$ConditionData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser$ConditionData;-><init>(Lorg/mozilla/javascript/Parser-IA;)V

    const/16 v1, 0x60

    .line 1240
    const-string v2, "msg.no.paren.cond"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    :cond_0
    const/4 v1, 0x0

    .line 1242
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    const/16 v1, 0x61

    .line 1244
    const-string v2, "msg.no.paren.after.cond"

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    .line 1248
    :cond_1
    iget-object v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v2, v1, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v2, :cond_2

    .line 1252
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    .line 1253
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    .line 1249
    const-string v3, "msg.equal.as.assign"

    const-string v4, ""

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    return-object v0
.end method

.method private consumeToken()V
    .locals 1

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 423
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getTokenStartLineno()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/Parser;->lastTokenLineno:I

    .line 424
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getTokenColumn()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/Parser;->lastTokenColumn:I

    return-void
.end method

.method private continueStatement()Lorg/mozilla/javascript/ast/ContinueStatement;
    .locals 9

    .line 1988
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1989
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1990
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    .line 1992
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v4

    const/16 v5, 0x2c

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 1993
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    .line 1994
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    move-object v1, v6

    .line 1998
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;

    move-result-object v5

    if-nez v5, :cond_4

    if-nez v1, :cond_4

    .line 2001
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 2004
    :cond_2
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/mozilla/javascript/ast/Loop;

    goto :goto_2

    .line 2002
    :cond_3
    :goto_1
    const-string v5, "msg.continue.outside"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    .line 2007
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    instance-of v7, v7, Lorg/mozilla/javascript/ast/Loop;

    if-nez v7, :cond_6

    .line 2008
    :cond_5
    const-string v7, "msg.continue.nonloop"

    sub-int v8, v4, v2

    invoke-virtual {p0, v7, v2, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_6
    if-nez v5, :cond_7

    goto :goto_2

    .line 2010
    :cond_7
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/mozilla/javascript/ast/Loop;

    :goto_2
    if-eqz v1, :cond_8

    .line 2014
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2017
    :cond_8
    new-instance v5, Lorg/mozilla/javascript/ast/ContinueStatement;

    sub-int/2addr v4, v2

    invoke-direct {v5, v2, v4}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    if-eqz v6, :cond_9

    .line 2019
    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/ContinueStatement;->setTarget(Lorg/mozilla/javascript/ast/Loop;)V

    .line 2020
    :cond_9
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    .line 2021
    invoke-virtual {v5, v0, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v5
.end method

.method private createNameNode()Lorg/mozilla/javascript/ast/Name;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2c

    .line 4054
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    return-object v0
.end method

.method private createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;
    .locals 6

    .line 4064
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 4065
    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    .line 4066
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    .line 4067
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    .line 4068
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4069
    iget v1, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    .line 4070
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    .line 4071
    iget v2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    .line 4072
    iget v3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenColumn:I

    const/4 v4, 0x0

    .line 4073
    iput v4, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    .line 4074
    iput-object v5, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    .line 4075
    iput v4, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    .line 4076
    iput v4, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenColumn:I

    :cond_0
    if-nez v0, :cond_2

    .line 4079
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 4082
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    move-object v5, v0

    .line 4085
    :goto_0
    new-instance v0, Lorg/mozilla/javascript/ast/Name;

    invoke-direct {v0, v1, v5}, Lorg/mozilla/javascript/ast/Name;-><init>(ILjava/lang/String;)V

    .line 4086
    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    if-eqz p1, :cond_3

    .line 4088
    invoke-virtual {p0, v5, p2}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method private createNumericLiteral(IZ)Lorg/mozilla/javascript/ast/AstNode;
    .locals 4

    .line 4138
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    .line 4139
    iget-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    const/16 v2, 0x59

    const/16 v3, 0xc8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumericOldOctal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4140
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    if-ge v1, v3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-ne p1, v2, :cond_1

    .line 4142
    const-string v1, "msg.no.old.octal.bigint"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 4144
    :cond_1
    const-string v1, "msg.no.old.octal.strict"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 4148
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    if-ge v1, v3, :cond_3

    if-nez p2, :cond_7

    .line 4149
    :cond_3
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->isNumericBinary()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0b"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4151
    :cond_4
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->isNumericOldOctal()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 4152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4153
    :cond_5
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->isNumericOctal()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0o"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4155
    :cond_6
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->isNumericHex()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 4156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    if-ne p1, v2, :cond_8

    .line 4162
    new-instance p1, Lorg/mozilla/javascript/ast/BigIntLiteral;

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getBigInt()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/mozilla/javascript/ast/BigIntLiteral;-><init>(ILjava/lang/String;Ljava/math/BigInteger;)V

    goto :goto_2

    .line 4164
    :cond_8
    new-instance p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, p2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->getNumber()D

    move-result-wide v2

    invoke-direct {p1, v1, v0, v2, v3}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>(ILjava/lang/String;D)V

    .line 4166
    :goto_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result p2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object p1
.end method

.method private createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;
    .locals 3

    .line 4094
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 4095
    new-instance v2, Lorg/mozilla/javascript/ast/StringLiteral;

    sub-int/2addr v0, v1

    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/ast/StringLiteral;-><init>(II)V

    .line 4096
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 4097
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/StringLiteral;->setValue(Ljava/lang/String;)V

    .line 4098
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getQuoteChar()C

    move-result v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/StringLiteral;->setQuoteCharacter(C)V

    return-object v2
.end method

.method private createTemplateLiteralCharacters(I)Lorg/mozilla/javascript/ast/TemplateCharacters;
    .locals 2

    .line 4131
    new-instance v0, Lorg/mozilla/javascript/ast/TemplateCharacters;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/ast/TemplateCharacters;-><init>(II)V

    .line 4132
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/TemplateCharacters;->setValue(Ljava/lang/String;)V

    .line 4133
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getRawString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/TemplateCharacters;->setRawValue(Ljava/lang/String;)V

    return-object v0
.end method

.method private defaultXmlNamespace()Lorg/mozilla/javascript/ast/AstNode;
    .locals 8

    .line 2170
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2171
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2172
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    .line 2173
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 2174
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x2c

    const/4 v4, 0x1

    .line 2176
    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    const-string v6, "msg.bad.namespace"

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v5}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "xml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2177
    :cond_1
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2179
    :cond_2
    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "namespace"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2180
    :cond_3
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_4
    const/16 v3, 0x63

    .line 2182
    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2183
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_5
    const/4 v3, 0x0

    .line 2186
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 2187
    new-instance v5, Lorg/mozilla/javascript/ast/UnaryExpression;

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-direct {v5, v2, v6}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(II)V

    const/16 v2, 0x52

    .line 2188
    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperator(I)V

    .line 2189
    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperand(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2190
    invoke-virtual {v5, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2192
    new-instance v0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {v0, v5, v4}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    return-object v0
.end method

.method private destructuringAssignExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3319
    :try_start_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    .line 3320
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3322
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    .line 3323
    throw v0
.end method

.method private destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3328
    :try_start_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    .line 3329
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->primaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3331
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    .line 3332
    throw v0
.end method

.method private doLoop()Lorg/mozilla/javascript/ast/DoLoop;
    .locals 6

    .line 1582
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x83

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1583
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1584
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1585
    new-instance v1, Lorg/mozilla/javascript/ast/DoLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/DoLoop;-><init>(I)V

    .line 1586
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 1587
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V

    .line 1589
    :try_start_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 1590
    const-string v3, "msg.no.while.do"

    const/4 v4, 0x1

    const/16 v5, 0x82

    invoke-direct {p0, v5, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 1591
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/DoLoop;->setWhilePosition(I)V

    .line 1592
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v3

    .line 1593
    iget-object v5, v3, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ast/DoLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1594
    iget v5, v3, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v5, v0

    iget v3, v3, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v5, v3}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    .line 1595
    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    .line 1596
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->restoreRelativeLoopPosition(Lorg/mozilla/javascript/ast/Loop;)V

    .line 1597
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    const/16 v2, 0x5b

    .line 1604
    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1605
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_1
    sub-int/2addr v3, v0

    .line 1607
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 1599
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    .line 1600
    throw v0
.end method

.method private enterLoop(Lorg/mozilla/javascript/ast/Loop;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    .line 511
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    .line 513
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 515
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 517
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Jump;->setLoop(Lorg/mozilla/javascript/ast/Jump;)V

    .line 524
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_2
    return-void
.end method

.method private enterSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private eqExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    .line 2642
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->relExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2644
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x34

    const/16 v4, 0x33

    const/16 v5, 0xd

    const/16 v6, 0xc

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    return-object v0

    .line 2650
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2652
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v7

    const/16 v8, 0x78

    if-ne v7, v8, :cond_2

    if-ne v1, v6, :cond_1

    const/16 v1, 0x33

    goto :goto_1

    :cond_1
    if-ne v1, v5, :cond_2

    const/16 v1, 0x34

    .line 2657
    :cond_2
    :goto_1
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->relExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private exitLoop()V
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 530
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 531
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-void
.end method

.method private exitSwitch()V
    .locals 2

    .line 546
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private expExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2736
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2738
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x51

    if-eq v1, v3, :cond_0

    return-object v0

    .line 2741
    :cond_0
    instance-of v3, v0, Lorg/mozilla/javascript/ast/UnaryExpression;

    if-eqz v3, :cond_1

    .line 2744
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ast/AstNode;->operatorToString(I)Ljava/lang/String;

    move-result-object v0

    .line 2742
    const-string v1, "msg.no.unary.expr.on.left.exp"

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    .line 2747
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2748
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private expr(Z)Lorg/mozilla/javascript/ast/AstNode;
    .locals 8

    .line 2474
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2475
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    :goto_0
    const/16 v2, 0x62

    const/4 v3, 0x1

    .line 2476
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2477
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2478
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2479
    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    sub-int/2addr v5, v1

    const-string v6, "msg.no.side.effects"

    const-string v7, ""

    invoke-virtual {p0, v6, v7, v1, v5}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2480
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_1

    const-string v5, "msg.yield.parenthesized"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 2481
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x61

    if-ne v5, v6, :cond_2

    const/16 p1, 0x1c

    .line 2482
    invoke-virtual {v0, p1, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return-object v0

    .line 2485
    :cond_2
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v3, v2, v0, v5, v4}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private forLoop()Lorg/mozilla/javascript/ast/Loop;
    .locals 17

    move-object/from16 v1, p0

    .line 1634
    iget v0, v1, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v2, 0x84

    if-eq v0, v2, :cond_0

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1635
    :cond_0
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1636
    iget-object v0, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    .line 1644
    new-instance v4, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v4}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    .line 1645
    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v5, 0x2c

    const/4 v6, 0x1

    .line 1648
    :try_start_0
    invoke-direct {v1, v5, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "msg.no.paren.for"

    const/4 v10, 0x0

    if-eqz v7, :cond_2

    .line 1649
    :try_start_1
    const-string v7, "each"

    iget-object v11, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v11}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1651
    iget-object v7, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v7, v0

    const/4 v11, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 1653
    :cond_1
    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_2
    const/4 v7, -0x1

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x60

    .line 1657
    invoke-direct {v1, v12, v8, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v8, v0

    goto :goto_1

    :cond_3
    const/4 v8, -0x1

    .line 1658
    :goto_1
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v12

    .line 1660
    invoke-direct {v1, v12}, Lorg/mozilla/javascript/Parser;->forLoopInit(I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v12

    const/16 v13, 0x39

    .line 1661
    invoke-direct {v1, v13, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v13

    const/16 v14, 0x61

    const/4 v15, 0x0

    if-eqz v13, :cond_4

    .line 1663
    iget-object v5, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v0

    .line 1664
    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1665
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    const/4 v9, 0x0

    const/16 v16, 0x1

    goto/16 :goto_6

    .line 1666
    :cond_4
    iget-object v13, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v13}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v13

    const/16 v9, 0xc8

    if-lt v13, v9, :cond_5

    .line 1667
    invoke-direct {v1, v5, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "of"

    iget-object v9, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 1668
    invoke-virtual {v9}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1670
    iget-object v5, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v0

    .line 1671
    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1672
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    const/4 v9, 0x1

    :goto_2
    const/16 v16, 0x0

    goto :goto_6

    .line 1674
    :cond_5
    const-string v5, "msg.no.semi.for"

    const/16 v9, 0x5b

    invoke-direct {v1, v9, v5, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 1675
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 1677
    new-instance v5, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v13, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v13, v13, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v5, v13, v6}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    .line 1679
    iget-object v13, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v13}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v13

    iget-object v15, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v15}, Lorg/mozilla/javascript/TokenStream;->getTokenColumn()I

    move-result v15

    invoke-virtual {v5, v13, v15}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    :goto_3
    move-object v13, v5

    goto :goto_4

    .line 1681
    :cond_6
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    goto :goto_3

    .line 1684
    :goto_4
    const-string v5, "msg.no.semi.for.cond"

    invoke-direct {v1, v9, v5, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 1685
    iget-object v5, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1686
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v9

    if-ne v9, v14, :cond_7

    .line 1687
    new-instance v15, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v15, v5, v6}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    .line 1689
    iget-object v5, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v5}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v5

    iget-object v9, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v9}, Lorg/mozilla/javascript/TokenStream;->getTokenColumn()I

    move-result v9

    invoke-virtual {v15, v5, v9}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    :goto_5
    const/4 v5, -0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 1691
    :cond_7
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v15

    goto :goto_5

    .line 1695
    :goto_6
    const-string v10, "msg.no.paren.for.ctrl"

    invoke-direct {v1, v14, v10, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v10, v10, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v10, v0

    goto :goto_7

    :cond_8
    const/4 v10, -0x1

    :goto_7
    if-nez v16, :cond_a

    if-eqz v9, :cond_9

    goto :goto_8

    .line 1716
    :cond_9
    new-instance v5, Lorg/mozilla/javascript/ast/ForLoop;

    invoke-direct {v5, v0}, Lorg/mozilla/javascript/ast/ForLoop;-><init>(I)V

    .line 1717
    invoke-virtual {v5, v12}, Lorg/mozilla/javascript/ast/ForLoop;->setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1718
    invoke-virtual {v5, v13}, Lorg/mozilla/javascript/ast/ForLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1719
    invoke-virtual {v5, v15}, Lorg/mozilla/javascript/ast/ForLoop;->setIncrement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_9

    .line 1698
    :cond_a
    :goto_8
    new-instance v14, Lorg/mozilla/javascript/ast/ForInLoop;

    invoke-direct {v14, v0}, Lorg/mozilla/javascript/ast/ForInLoop;-><init>(I)V

    .line 1699
    instance-of v15, v12, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v15, :cond_b

    .line 1701
    move-object v15, v12

    check-cast v15, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-virtual {v15}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-le v15, v6, :cond_b

    .line 1702
    const-string v6, "msg.mult.index"

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_b
    if-eqz v9, :cond_c

    if-eqz v11, :cond_c

    .line 1706
    const-string v6, "msg.invalid.for.each"

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1708
    :cond_c
    invoke-virtual {v14, v12}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1709
    invoke-virtual {v14, v13}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1710
    invoke-virtual {v14, v5}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    .line 1711
    invoke-virtual {v14, v11}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForEach(Z)V

    .line 1712
    invoke-virtual {v14, v7}, Lorg/mozilla/javascript/ast/ForInLoop;->setEachPosition(I)V

    .line 1713
    invoke-virtual {v14, v9}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForOf(Z)V

    move-object v5, v14

    .line 1724
    :goto_9
    iget-object v6, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v6, v5}, Lorg/mozilla/javascript/ast/Scope;->replaceWith(Lorg/mozilla/javascript/ast/Scope;)V

    .line 1725
    invoke-virtual {v1}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 1730
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1732
    :try_start_2
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 1733
    invoke-static {v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {v5, v7}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 1734
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/Parser;->restoreRelativeLoopPosition(Lorg/mozilla/javascript/ast/Loop;)V

    .line 1735
    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1737
    :try_start_3
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->exitLoop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1741
    iget-object v0, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v0, v4, :cond_d

    .line 1742
    invoke-virtual {v1}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 1745
    :cond_d
    invoke-virtual {v5, v8, v10}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    .line 1746
    invoke-virtual {v5, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v5

    :catchall_1
    move-exception v0

    .line 1737
    :try_start_4
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    .line 1738
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1741
    :goto_a
    iget-object v2, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v2, v4, :cond_e

    .line 1742
    invoke-virtual {v1}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 1744
    :cond_e
    throw v0
.end method

.method private forLoopInit(I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1752
    :try_start_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/16 v2, 0x5b

    if-ne p1, v2, :cond_0

    .line 1755
    new-instance p1, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p1, v2, v0}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    .line 1757
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getTokenColumn()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/16 v0, 0x87

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1762
    :cond_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_1

    .line 1759
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1760
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    :goto_1
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object p1

    :goto_2
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 1767
    throw p1
.end method

.method private function(I)Lorg/mozilla/javascript/ast/FunctionNode;
    .locals 1

    const/4 v0, 0x0

    .line 936
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p1

    return-object p1
.end method

.method private function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;
    .locals 12

    .line 942
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    .line 943
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 944
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x2c

    const/4 v6, 0x1

    .line 949
    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v7

    const-string v8, "msg.no.paren.parms"

    const/16 v9, 0x60

    const/4 v10, 0x0

    if-eqz v7, :cond_3

    .line 950
    invoke-direct {p0, v6, v5}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    .line 951
    iget-boolean v7, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v7, :cond_1

    .line 952
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 953
    const-string v11, "eval"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "arguments"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 954
    :cond_0
    const-string v11, "msg.bad.id.strict"

    invoke-virtual {p0, v11, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_1
    invoke-direct {p0, v9, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v7

    if-nez v7, :cond_7

    .line 958
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowMemberExprAsFunctionName()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 961
    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    move-object v5, v10

    move-object v10, v3

    .line 963
    :cond_2
    invoke-direct {p0, v9, v8, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    goto :goto_2

    .line 965
    :cond_3
    invoke-direct {p0, v9, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v10

    goto :goto_2

    :cond_4
    const/16 v5, 0x17

    .line 967
    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 968
    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v5

    const/16 v7, 0xc8

    if-lt v5, v7, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    .line 973
    :cond_5
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowMemberExprAsFunctionName()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 977
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object v3, v10

    .line 979
    :goto_1
    invoke-direct {p0, v9, v8, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-object v5, v10

    move-object v10, v3

    .line 983
    :cond_7
    :goto_2
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/4 v6, -0x1

    if-ne v3, v9, :cond_8

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_3

    :cond_8
    const/4 v3, -0x1

    :goto_3
    const/4 v7, 0x2

    if-eqz v10, :cond_9

    const/4 v8, 0x2

    goto :goto_4

    :cond_9
    move v8, p1

    :goto_4
    if-eq v8, v7, :cond_a

    if-eqz v5, :cond_a

    .line 991
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v7

    if-lez v7, :cond_a

    const/16 v7, 0x7a

    .line 993
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    .line 996
    :cond_a
    new-instance v7, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v7, v1, v5}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>(ILorg/mozilla/javascript/ast/Name;)V

    .line 997
    invoke-virtual {v7, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->setMethodDefinition(Z)V

    .line 998
    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    if-eqz v4, :cond_b

    .line 1000
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsES6Generator()V

    :cond_b
    if-eq v3, v6, :cond_c

    sub-int/2addr v3, v1

    .line 1002
    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/ast/FunctionNode;->setLp(I)V

    .line 1004
    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 1006
    new-instance v3, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v3, p0, v7}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    .line 1007
    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->insideMethod:Z

    .line 1008
    iput-boolean p2, p0, Lorg/mozilla/javascript/Parser;->insideMethod:Z

    .line 1010
    :try_start_0
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->parseFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;)V

    .line 1011
    invoke-direct {p0, p1, v7}, Lorg/mozilla/javascript/Parser;->parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    .line 1012
    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1013
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p1

    add-int/2addr p2, p1

    .line 1014
    invoke-virtual {v7, v1, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->setRawSourceBounds(II)V

    sub-int/2addr p2, v1

    .line 1015
    invoke-virtual {v7, p2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 1017
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->hasConsistentReturnUsage()Z

    move-result p1

    if-nez p1, :cond_f

    if-eqz v5, :cond_d

    .line 1019
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result p1

    if-lez p1, :cond_d

    .line 1020
    const-string p1, "msg.no.return.value"

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    .line 1021
    :cond_d
    const-string p1, "msg.anon.no.return.value"

    :goto_5
    if-nez v5, :cond_e

    .line 1022
    const-string p2, ""

    goto :goto_6

    :cond_e
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    :cond_f
    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    .line 1026
    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->insideMethod:Z

    if-eqz v10, :cond_10

    .line 1031
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1032
    invoke-virtual {v7, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->setMemberExprNode(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1044
    :cond_10
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v7, v0, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 1046
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result p1

    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    .line 1052
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1053
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_11
    return-object v7

    .line 1025
    :goto_7
    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    .line 1026
    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->insideMethod:Z

    .line 1027
    throw p1
.end method

.method private generatorExpression(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    const/4 v0, 0x0

    .line 3676
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1
.end method

.method private generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 3682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3683
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x84

    if-ne v1, v2, :cond_0

    .line 3684
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->generatorExpressionLoop()Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3688
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 3689
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3690
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    .line 3691
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-nez p3, :cond_2

    .line 3694
    const-string p3, "msg.no.paren.let"

    const/4 v3, 0x1

    const/16 v4, 0x61

    invoke-direct {p0, v4, p3, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 3696
    :cond_2
    new-instance p3, Lorg/mozilla/javascript/ast/GeneratorExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, p2

    invoke-direct {p3, p2, v3}, Lorg/mozilla/javascript/ast/GeneratorExpression;-><init>(II)V

    .line 3697
    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setResult(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3698
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setLoops(Ljava/util/List;)V

    if-eqz v2, :cond_3

    .line 3700
    invoke-virtual {p3, v1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setIfPosition(I)V

    .line 3701
    iget-object p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilter(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3702
    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilterLp(I)V

    .line 3703
    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilterRp(I)V

    :cond_3
    return-object p3
.end method

.method private generatorExpressionLoop()Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;
    .locals 10

    .line 3709
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 3710
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3712
    new-instance v1, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;-><init>(I)V

    .line 3714
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 3716
    :try_start_0
    const-string v2, "msg.no.paren.for"

    const/4 v3, 0x1

    const/16 v4, 0x60

    invoke-direct {p0, v4, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    .line 3717
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    const/4 v2, -0x1

    .line 3721
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_3

    const/16 v7, 0x5c

    if-eq v5, v7, :cond_2

    const/16 v7, 0x5e

    if-eq v5, v7, :cond_2

    .line 3733
    const-string v5, "msg.bad.var"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_1

    .line 3725
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    .line 3726
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    .line 3729
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3730
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    .line 3738
    :goto_1
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 3739
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa7

    invoke-virtual {p0, v7, v6, v3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 3742
    :cond_4
    const-string v6, "msg.in.after.for.name"

    const/16 v7, 0x39

    invoke-direct {p0, v7, v6, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v6, v0

    goto :goto_2

    :cond_5
    const/4 v6, -0x1

    :goto_2
    const/4 v7, 0x0

    .line 3743
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    .line 3744
    const-string v8, "msg.no.paren.for.ctrl"

    const/16 v9, 0x61

    invoke-direct {p0, v9, v8, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v4, v3, v0

    .line 3746
    :cond_6
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 3747
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3748
    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3749
    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    .line 3750
    invoke-virtual {v1, v2, v4}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3753
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :goto_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 3754
    throw v0
.end method

.method private getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    const/4 v1, 0x0

    .line 359
    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    return-object v0
.end method

.method private static getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;
    .locals 1

    .line 773
    instance-of v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_0

    .line 774
    check-cast p0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p0

    .line 775
    instance-of v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v0, :cond_0

    .line 776
    check-cast p0, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 3

    .line 1620
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/16 v1, 0xaf

    .line 1621
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1623
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 1625
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v1

    .line 1627
    :cond_0
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method private static getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I
    .locals 1

    .line 338
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static getPropKey(Lorg/mozilla/javascript/Node;)Ljava/lang/Object;
    .locals 2

    .line 4549
    instance-of v0, p0, Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    .line 4550
    check-cast p0, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    .line 4551
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4552
    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v0, :cond_1

    .line 4553
    check-cast p0, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 4554
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4555
    :cond_1
    instance-of v0, p0, Lorg/mozilla/javascript/ast/NumberLiteral;

    if-eqz v0, :cond_2

    .line 4556
    check-cast p0, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v0

    .line 4557
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(D)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4558
    :cond_2
    instance-of v0, p0, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    if-eqz v0, :cond_3

    .line 4559
    check-cast p0, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->getMethodName()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Parser;->getPropKey(Lorg/mozilla/javascript/Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private ifStatement()Lorg/mozilla/javascript/ast/IfStatement;
    .locals 9

    .line 1450
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1451
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1452
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 1453
    new-instance v3, Lorg/mozilla/javascript/ast/IfStatement;

    invoke-direct {v3, v0}, Lorg/mozilla/javascript/ast/IfStatement;-><init>(I)V

    .line 1454
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v4

    .line 1455
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    const/16 v6, 0x7e

    const/4 v7, 0x1

    .line 1456
    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1457
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v8, 0xaf

    if-ne v6, v8, :cond_1

    .line 1459
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/IfStatement;->setElseKeyWordInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1460
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1462
    :cond_1
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v6, v0

    .line 1463
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    move-object v8, v7

    goto :goto_1

    :cond_3
    move-object v8, v5

    .line 1465
    :goto_1
    invoke-static {v8}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    sub-int/2addr v8, v0

    .line 1466
    invoke-virtual {v3, v8}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 1467
    iget-object v8, v4, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v8}, Lorg/mozilla/javascript/ast/IfStatement;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1468
    iget v8, v4, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v8, v0

    iget v4, v4, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v8, v4}, Lorg/mozilla/javascript/ast/IfStatement;->setParens(II)V

    .line 1469
    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/IfStatement;->setThenPart(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1470
    invoke-virtual {v3, v7}, Lorg/mozilla/javascript/ast/IfStatement;->setElsePart(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1471
    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/IfStatement;->setElsePosition(I)V

    .line 1472
    invoke-virtual {v3, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v3
.end method

.method private static isNotValidSimpleAssignmentTarget(Lorg/mozilla/javascript/ast/AstNode;)Z
    .locals 2

    .line 2540
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 2541
    check-cast p0, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Parser;->isNotValidSimpleAssignmentTarget(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result p0

    return p0

    .line 2542
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p0

    const/16 v0, 0xba

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private let(ZI)Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    .line 2367
    new-instance v0, Lorg/mozilla/javascript/ast/LetNode;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/ast/LetNode;-><init>(I)V

    .line 2368
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    const/16 v1, 0x60

    .line 2369
    const-string v2, "msg.no.paren.after.let"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setLp(I)V

    .line 2370
    :cond_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 2372
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v2, 0xa7

    invoke-direct {p0, v2, v1, p1}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v1

    .line 2373
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)V

    .line 2374
    const-string v1, "msg.no.paren.let"

    const/16 v4, 0x61

    invoke-direct {p0, v4, v1, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2375
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setRp(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2377
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v4, 0x5e

    if-ne v1, v4, :cond_2

    .line 2379
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2380
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2381
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statements()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 2382
    const-string v4, "msg.no.curly.let"

    const/16 v5, 0x5f

    invoke-direct {p0, v5, v4, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 2383
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 2384
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 2385
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2386
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2389
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 2390
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 2391
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    if-eqz p1, :cond_3

    .line 2394
    new-instance p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-direct {p1, v0, p2}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 2395
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p2

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v0

    :goto_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 2401
    throw p1
.end method

.method private letStatement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    .line 2050
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2051
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2052
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    .line 2054
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x60

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    .line 2055
    invoke-direct {p0, v6, v2}, Lorg/mozilla/javascript/Parser;->let(ZI)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    goto :goto_0

    .line 2057
    :cond_1
    invoke-direct {p0, v1, v2, v6}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v1

    .line 2059
    :goto_0
    invoke-virtual {v1, v0, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v1
.end method

.method private lineBeginningFor(I)I
    .locals 4

    .line 4254
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-gtz p1, :cond_1

    return v1

    .line 4261
    :cond_1
    array-length v2, v0

    if-lt p1, v2, :cond_2

    .line 4262
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_2
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ltz v2, :cond_4

    .line 4265
    aget-char v3, v0, v2

    .line 4266
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v3

    if-eqz v3, :cond_3

    return p1

    :cond_3
    move p1, v2

    goto :goto_0

    :cond_4
    return v1
.end method

.method private lineNumber()I
    .locals 1

    .line 409
    iget v0, p0, Lorg/mozilla/javascript/Parser;->lastTokenLineno:I

    return v0
.end method

.method private makeElemGet(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ElementGet;
    .locals 6

    .line 3196
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 3197
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 3198
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    .line 3200
    const-string v3, "msg.no.bracket.index"

    const/4 v4, 0x1

    const/16 v5, 0x5d

    invoke-direct {p0, v5, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3201
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3202
    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 3204
    :goto_0
    new-instance v4, Lorg/mozilla/javascript/ast/ElementGet;

    sub-int/2addr v2, v0

    invoke-direct {v4, v0, v2}, Lorg/mozilla/javascript/ast/ElementGet;-><init>(II)V

    .line 3205
    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/ElementGet;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3206
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/ast/ElementGet;->setElement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3207
    invoke-virtual {v4, p2, v3}, Lorg/mozilla/javascript/ast/ElementGet;->setParens(II)V

    return-object v4
.end method

.method private makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;
    .locals 3

    .line 4226
    new-instance v0, Lorg/mozilla/javascript/ast/ErrorNode;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/ast/ErrorNode;-><init>(II)V

    .line 4227
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v0
.end method

.method private makeFunctionCall(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/FunctionCall;
    .locals 3

    .line 3042
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3043
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Parser;->checkCallRequiresActivation(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3044
    new-instance v0, Lorg/mozilla/javascript/ast/FunctionCall;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/ast/FunctionCall;-><init>(I)V

    .line 3045
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/FunctionCall;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3046
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/FunctionCall;->setLp(I)V

    .line 3047
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->argumentList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3048
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_0

    const-string v1, "msg.too.many.function.args"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3049
    :cond_0
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/FunctionCall;->setArguments(Ljava/util/List;)V

    .line 3050
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/FunctionCall;->setRp(I)V

    .line 3051
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    if-eqz p3, :cond_1

    .line 3053
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionCall;->markIsOptionalCall()V

    :cond_1
    return-object v0
.end method

.method private matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;
    .locals 3

    .line 1939
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1940
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1941
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/mozilla/javascript/ast/LabeledStatement;

    :cond_0
    if-nez v2, :cond_1

    .line 1945
    const-string v0, "msg.undef.label"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method private matchToken(IZ)Z
    .locals 2

    .line 434
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    :goto_0
    const/16 v1, 0xaf

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 436
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 437
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 442
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 p1, 0x1

    return p1
.end method

.method private memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    .line 2919
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    .line 2923
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->primaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_0

    .line 2925
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2926
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 2927
    new-instance v3, Lorg/mozilla/javascript/ast/NewExpression;

    invoke-direct {v3, v0}, Lorg/mozilla/javascript/ast/NewExpression;-><init>(I)V

    const/4 v4, 0x0

    .line 2929
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 2930
    invoke-static {v4}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    .line 2931
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/FunctionCall;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2932
    invoke-virtual {v3, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    const/16 v1, 0x60

    const/4 v2, 0x1

    .line 2935
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2936
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2937
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->argumentList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2938
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/high16 v6, 0x10000

    if-le v5, v6, :cond_1

    .line 2939
    const-string v5, "msg.too.many.constructor.args"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2940
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2941
    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    if-eqz v4, :cond_2

    .line 2942
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/FunctionCall;->setArguments(Ljava/util/List;)V

    :cond_2
    sub-int/2addr v1, v0

    sub-int/2addr v6, v0

    .line 2943
    invoke-virtual {v3, v1, v6}, Lorg/mozilla/javascript/ast/FunctionCall;->setParens(II)V

    :cond_3
    const/16 v1, 0x5e

    .line 2950
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2951
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v1

    .line 2952
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    .line 2953
    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/NewExpression;->setInitializer(Lorg/mozilla/javascript/ast/ObjectLiteral;)V

    :cond_4
    sub-int/2addr v5, v0

    .line 2955
    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    move-object v0, v3

    .line 2958
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1
.end method

.method private memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 12

    if-nez p2, :cond_0

    .line 2971
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2972
    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2977
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v3

    .line 2978
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v4

    .line 2979
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_a

    const/16 v6, 0x60

    if-eq v5, v6, :cond_8

    const/16 v6, 0x79

    const/4 v7, 0x1

    const/16 v8, 0xba

    if-eq v5, v6, :cond_6

    const/16 v6, 0x9d

    if-eq v5, v6, :cond_6

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_4

    const/16 v3, 0xaf

    if-eq v5, v3, :cond_2

    const/16 v3, 0xb4

    if-eq v5, v3, :cond_1

    if-eq v5, v8, :cond_6

    goto/16 :goto_3

    .line 3030
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3031
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/Parser;->taggedTemplateLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    goto :goto_0

    .line 3022
    :cond_2
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 3023
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    .line 3025
    iget v4, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/high16 v5, 0x10000

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    move v3, v4

    .line 3027
    :cond_3
    iput v3, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    goto :goto_0

    .line 2989
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2990
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2991
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    .line 2992
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 2993
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2994
    invoke-static {v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    const/16 v9, 0x61

    .line 2995
    const-string v10, "msg.no.paren"

    invoke-direct {p0, v9, v10, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2996
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2997
    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v11, v8

    move v8, v7

    move v7, v11

    goto :goto_1

    :cond_5
    const/4 v7, -0x1

    .line 2999
    :goto_1
    new-instance v9, Lorg/mozilla/javascript/ast/XmlDotQuery;

    sub-int/2addr v8, v0

    invoke-direct {v9, v0, v8}, Lorg/mozilla/javascript/ast/XmlDotQuery;-><init>(II)V

    .line 3000
    invoke-virtual {v9, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3001
    invoke-virtual {v9, v6}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3002
    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    sub-int/2addr v7, v0

    .line 3003
    invoke-virtual {v9, v7}, Lorg/mozilla/javascript/ast/XmlDotQuery;->setRp(I)V

    .line 3004
    invoke-virtual {v9, v3, v4}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    move-object p2, v9

    goto/16 :goto_0

    :cond_6
    if-ne v5, v8, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    or-int/2addr v2, v7

    .line 2985
    invoke-direct {p0, v5, p2, v2}, Lorg/mozilla/javascript/Parser;->propertyAccess(ILorg/mozilla/javascript/ast/AstNode;Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    goto/16 :goto_0

    :cond_8
    if-nez p1, :cond_9

    :goto_3
    return-object p2

    .line 3017
    :cond_9
    invoke-direct {p0, p2, v0, v2}, Lorg/mozilla/javascript/Parser;->makeFunctionCall(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/FunctionCall;

    move-result-object p2

    goto/16 :goto_0

    .line 3009
    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3010
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, p2, v3}, Lorg/mozilla/javascript/Parser;->makeElemGet(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ElementGet;

    move-result-object p2

    goto/16 :goto_0
.end method

.method private methodDefinition(ILorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/ObjectProperty;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 4022
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    .line 4024
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4025
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4026
    const-string v2, "msg.bad.prop"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 4028
    :cond_0
    new-instance v2, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v2, p1}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>(I)V

    if-eq p3, v1, :cond_3

    const/4 v1, 0x4

    if-eq p3, v1, :cond_2

    const/16 v1, 0x8

    if-eq p3, v1, :cond_1

    goto :goto_0

    .line 4039
    :cond_1
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsNormalMethod()V

    .line 4040
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsNormalMethod()V

    if-eqz p4, :cond_4

    .line 4042
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsES6Generator()V

    goto :goto_0

    .line 4035
    :cond_2
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsSetterMethod()V

    .line 4036
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsSetterMethod()V

    goto :goto_0

    .line 4031
    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsGetterMethod()V

    .line 4032
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsGetterMethod()V

    .line 4046
    :cond_4
    :goto_0
    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p3

    .line 4047
    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 4048
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    sub-int/2addr p3, p1

    .line 4049
    invoke-virtual {v2, p3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v2
.end method

.method private mulExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2719
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2721
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 2726
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2727
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private mustHaveXML()V
    .locals 1

    .line 476
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    const-string v0, "msg.XML.not.available"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private mustMatchToken(ILjava/lang/String;IIZ)Z
    .locals 0

    .line 468
    invoke-direct {p0, p1, p5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 471
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    const/4 p1, 0x0

    return p1
.end method

.method private mustMatchToken(ILjava/lang/String;Z)Z
    .locals 7

    .line 462
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int v5, v0, v4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;IIZ)Z

    move-result p1

    return p1
.end method

.method private name(II)Lorg/mozilla/javascript/ast/AstNode;
    .locals 4

    .line 3490
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object p2

    .line 3491
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    const/high16 v3, 0x20000

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    .line 3492
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result p1

    const/16 v3, 0x74

    if-ne p1, v3, :cond_0

    .line 3495
    new-instance p1, Lorg/mozilla/javascript/ast/Label;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v1, v0

    invoke-direct {p1, v0, v1}, Lorg/mozilla/javascript/ast/Label;-><init>(II)V

    .line 3496
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/Label;->setName(Ljava/lang/String;)V

    .line 3497
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result p2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object p1

    .line 3503
    :cond_0
    invoke-direct {p0, v0, p2, v1, v2}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;II)V

    .line 3505
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 p2, 0x0

    .line 3506
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const/16 p2, 0x2c

    .line 3508
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    return-object p1
.end method

.method private nameOrLabel()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    .line 2223
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_7

    .line 2224
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2227
    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/4 v2, 0x0

    .line 2228
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 2230
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x90

    if-eq v5, v6, :cond_0

    .line 2231
    new-instance v0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 2232
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v0

    .line 2236
    :cond_0
    new-instance v5, Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-direct {v5, v0}, Lorg/mozilla/javascript/ast/LabeledStatement;-><init>(I)V

    .line 2237
    move-object v7, v4

    check-cast v7, Lorg/mozilla/javascript/ast/Label;

    invoke-direct {p0, v7, v5}, Lorg/mozilla/javascript/Parser;->recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V

    .line 2238
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v7

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v4

    invoke-virtual {v5, v7, v4}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2241
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/4 v7, 0x0

    if-ne v4, v1, :cond_2

    .line 2242
    iget v4, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    or-int/2addr v4, v3

    iput v4, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 2243
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 2244
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v8

    if-eq v8, v6, :cond_1

    .line 2245
    new-instance v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v4, v2}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 2246
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    .line 2249
    :cond_1
    check-cast v4, Lorg/mozilla/javascript/ast/Label;

    invoke-direct {p0, v4, v5}, Lorg/mozilla/javascript/Parser;->recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V

    goto :goto_0

    :cond_2
    move-object v1, v7

    .line 2254
    :goto_1
    :try_start_0
    iput-object v5, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-nez v1, :cond_3

    .line 2256
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statementHelper()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 2257
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    const/16 v3, 0xaf

    if-ne v2, v3, :cond_3

    .line 2259
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    .line 2260
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 2261
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2262
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2266
    :cond_3
    :goto_2
    iput-object v7, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 2268
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/Label;

    .line 2269
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2275
    :cond_4
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    :goto_4
    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 2276
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/LabeledStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v5

    .line 2266
    :goto_5
    iput-object v7, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 2268
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Label;

    .line 2269
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2271
    :cond_6
    throw v0

    .line 2223
    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private nextToken()I
    .locals 1

    .line 428
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    .line 429
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    return v0
.end method

.method private static nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I
    .locals 1

    .line 4233
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static final nowAllSet(III)Z
    .locals 0

    .line 0
    and-int/2addr p0, p2

    if-eq p0, p2, :cond_0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private nullishCoalescingExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    .line 2578
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->orExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xb9

    .line 2579
    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2580
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2581
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nullishCoalescingExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 2584
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x75

    if-eq v4, v5, :cond_0

    .line 2585
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v6, 0x76

    if-eq v4, v6, :cond_0

    .line 2586
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 2587
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 2588
    :cond_0
    const-string v4, "msg.nullish.bad.token"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2591
    :cond_1
    new-instance v4, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {v4, v2, v0, v3, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    return-object v4

    :cond_2
    return-object v0
.end method

.method private objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;
    .locals 19

    move-object/from16 v0, p0

    .line 3763
    iget-object v1, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    .line 3765
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3768
    iget-boolean v5, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v5, :cond_0

    .line 3769
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3770
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 3772
    :goto_0
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 3778
    :goto_1
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v12

    .line 3779
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v13

    const/16 v14, 0xaf

    if-ne v12, v14, :cond_1

    .line 3781
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3782
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    move-result v12

    :cond_1
    const/16 v14, 0x5f

    if-ne v12, v14, :cond_3

    if-eq v11, v9, :cond_2

    .line 3785
    invoke-direct {v0, v1, v4, v11}, Lorg/mozilla/javascript/Parser;->warnTrailingComma(ILjava/util/List;I)V

    :cond_2
    move/from16 v18, v2

    const/4 v9, 0x1

    goto/16 :goto_9

    .line 3788
    :cond_3
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 3789
    const-string v15, "msg.bad.prop"

    if-nez v6, :cond_4

    .line 3790
    invoke-virtual {v0, v15}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    move/from16 v18, v2

    const/4 v2, 0x1

    const/4 v14, 0x0

    goto/16 :goto_7

    .line 3792
    :cond_4
    iget-object v14, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v14}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v14

    .line 3793
    iget-object v9, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3794
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    move/from16 v16, v10

    .line 3795
    instance-of v10, v6, Lorg/mozilla/javascript/ast/Name;

    if-nez v10, :cond_5

    instance-of v10, v6, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v10, :cond_6

    :cond_5
    move/from16 v18, v2

    move/from16 v17, v11

    goto :goto_2

    .line 3798
    :cond_6
    instance-of v10, v6, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    if-eqz v10, :cond_7

    .line 3800
    move-object v10, v6

    check-cast v10, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    .line 3801
    invoke-virtual {v10}, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->getMethodName()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    move/from16 v17, v11

    .line 3802
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v11

    move/from16 v18, v2

    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    invoke-virtual {v10, v11, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    goto :goto_3

    :cond_7
    move/from16 v18, v2

    move/from16 v17, v11

    goto :goto_3

    .line 3797
    :goto_2
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v10

    invoke-virtual {v6, v2, v10}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 3813
    :goto_3
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    const/16 v10, 0x62

    if-eq v2, v10, :cond_12

    const/16 v10, 0x74

    if-eq v2, v10, :cond_12

    const/16 v10, 0x5f

    if-eq v2, v10, :cond_12

    const/16 v10, 0x63

    if-ne v2, v10, :cond_a

    .line 3818
    iget-object v2, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v2

    const/16 v10, 0xc8

    if-lt v2, v10, :cond_9

    .line 3819
    invoke-direct {v0, v6, v12}, Lorg/mozilla/javascript/Parser;->plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    const/16 v10, 0x62

    .line 3820
    invoke-direct {v0, v10, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    move/from16 v11, v17

    move/from16 v2, v18

    const/4 v9, -0x1

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x1

    const/4 v10, 0x1

    goto/16 :goto_9

    .line 3826
    :cond_9
    const-string v2, "msg.default.args"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x2

    goto :goto_5

    :cond_a
    const/16 v10, 0x60

    if-ne v2, v10, :cond_b

    move/from16 v10, v16

    const/16 v2, 0x8

    goto :goto_4

    .line 3830
    :cond_b
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v10, 0x2c

    if-ne v2, v10, :cond_d

    .line 3831
    const-string v2, "get"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move/from16 v10, v16

    const/4 v2, 0x2

    goto :goto_4

    .line 3833
    :cond_c
    const-string v2, "set"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move/from16 v10, v16

    const/4 v2, 0x4

    goto :goto_4

    :cond_d
    move/from16 v10, v16

    const/4 v2, 0x1

    goto :goto_4

    :goto_5
    if-eq v2, v11, :cond_e

    const/4 v11, 0x4

    if-ne v2, v11, :cond_10

    .line 3838
    :cond_e
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    if-nez v6, :cond_f

    .line 3840
    invoke-virtual {v0, v15}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3842
    :cond_f
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    :cond_10
    if-nez v6, :cond_11

    const/4 v14, 0x0

    goto :goto_6

    .line 3847
    :cond_11
    iget-object v11, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v11}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v14

    .line 3849
    instance-of v11, v6, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    .line 3850
    invoke-direct {v0, v9, v6, v2, v11}, Lorg/mozilla/javascript/Parser;->methodDefinition(ILorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v9

    .line 3855
    invoke-virtual {v6, v13}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 3856
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3859
    :cond_12
    invoke-virtual {v6, v13}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 3860
    invoke-direct {v0, v6, v12}, Lorg/mozilla/javascript/Parser;->plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v10, v16

    const/4 v2, 0x1

    .line 3862
    :goto_6
    instance-of v9, v6, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    if-eqz v9, :cond_13

    const/16 v9, 0x8

    if-eq v2, v9, :cond_13

    .line 3863
    invoke-virtual {v0, v15}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3867
    :cond_13
    :goto_7
    iget-boolean v9, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v9, :cond_1b

    if-eqz v14, :cond_1b

    instance-of v6, v6, Lorg/mozilla/javascript/ast/ComputedPropertyKey;

    if-nez v6, :cond_1b

    .line 3870
    const-string v6, "msg.dup.obj.lit.prop.strict"

    const/4 v9, 0x1

    if-eq v2, v9, :cond_18

    const/4 v11, 0x2

    if-eq v2, v11, :cond_16

    const/4 v11, 0x4

    if-eq v2, v11, :cond_14

    const/16 v9, 0x8

    if-eq v2, v9, :cond_18

    goto :goto_8

    .line 3887
    :cond_14
    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3888
    invoke-virtual {v0, v6, v14}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    :cond_15
    invoke-interface {v7, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3881
    :cond_16
    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3882
    invoke-virtual {v0, v6, v14}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    :cond_17
    invoke-interface {v5, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3873
    :cond_18
    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 3874
    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3875
    :cond_19
    invoke-virtual {v0, v6, v14}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    :cond_1a
    invoke-interface {v5, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3878
    invoke-interface {v7, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3896
    :cond_1b
    :goto_8
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    const/16 v2, 0x62

    const/4 v9, 0x1

    .line 3898
    invoke-direct {v0, v2, v9}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3899
    iget-object v2, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move/from16 v2, v18

    const/4 v9, -0x1

    goto/16 :goto_1

    .line 3905
    :cond_1c
    :goto_9
    const-string v2, "msg.no.brace.prop"

    const/16 v5, 0x5f

    invoke-direct {v0, v5, v2, v9}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 3906
    new-instance v2, Lorg/mozilla/javascript/ast/ObjectLiteral;

    iget-object v5, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v5, v1

    invoke-direct {v2, v1, v5}, Lorg/mozilla/javascript/ast/ObjectLiteral;-><init>(II)V

    if-eqz v10, :cond_1d

    const/16 v1, 0x1d

    .line 3908
    invoke-virtual {v2, v1, v9}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_1d
    if-eqz v8, :cond_1e

    .line 3911
    invoke-virtual {v2, v8}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 3913
    :cond_1e
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/ObjectLiteral;->setElements(Ljava/util/List;)V

    move/from16 v1, v18

    .line 3914
    invoke-virtual {v2, v1, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v2
.end method

.method private objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    .line 3920
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x17

    const/16 v2, 0xc8

    const/4 v3, 0x0

    .line 3921
    const-string v4, "msg.bad.prop"

    if-eq v0, v1, :cond_5

    const/16 v1, 0x59

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 3973
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 3975
    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 3976
    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 3974
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3979
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v3

    .line 3927
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;

    move-result-object v0

    return-object v0

    .line 3923
    :pswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    return-object v0

    .line 3936
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 3937
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3938
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    .line 3939
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    .line 3940
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 3941
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 3942
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_2

    .line 3943
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3945
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    .line 3947
    new-instance v4, Lorg/mozilla/javascript/ast/ComputedPropertyKey;

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v5, v0

    invoke-direct {v4, v0, v5}, Lorg/mozilla/javascript/ast/ComputedPropertyKey;-><init>(II)V

    .line 3948
    invoke-virtual {v4, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 3949
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/ComputedPropertyKey;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v4

    .line 3951
    :cond_3
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object v3

    :cond_4
    :pswitch_2
    const/4 v1, 0x1

    .line 3932
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->createNumericLiteral(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3957
    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v0

    if-lt v0, v2, :cond_6

    .line 3958
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3959
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    .line 3960
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    .line 3961
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 3962
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 3964
    new-instance v4, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v5, v0

    invoke-direct {v4, v0, v5, v3}, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 3965
    invoke-virtual {v4, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v4

    .line 3967
    :cond_6
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private orExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2597
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->andExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x75

    .line 2598
    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2599
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2600
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->orExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    return-object v3

    :cond_0
    return-object v0
.end method

.method private parenExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 12

    .line 3449
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v1, 0x0

    .line 3450
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 3452
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v2

    .line 3453
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v4

    .line 3454
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3455
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v7, 0x61

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    new-instance v6, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v6, v5}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 3456
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v9

    const/16 v10, 0x84

    if-ne v9, v10, :cond_1

    .line 3457
    invoke-direct {p0, v6, v5}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3485
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v1

    .line 3459
    :cond_1
    :try_start_1
    const-string v9, "msg.no.paren"

    invoke-direct {p0, v7, v9, v8}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 3461
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v7, v5

    const/16 v9, 0x1d

    .line 3464
    invoke-virtual {v6, v9, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v9

    if-ne v9, v8, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0x1c

    .line 3465
    invoke-virtual {v6, v10, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v11

    if-ne v11, v8, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    if-nez v9, :cond_4

    .line 3466
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    const/16 v11, 0x8d

    if-ne v9, v11, :cond_5

    .line 3467
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v9

    const/16 v11, 0xb2

    if-eq v9, v11, :cond_5

    .line 3468
    const-string v1, "msg.syntax"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3469
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3485
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v1

    .line 3472
    :cond_5
    :try_start_2
    new-instance v9, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-direct {v9, v5, v7, v6}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 3473
    invoke-virtual {v9, v3, v4}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    if-nez v2, :cond_6

    .line 3475
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_7

    .line 3478
    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 3481
    invoke-virtual {v9, v10, v8}, Lorg/mozilla/javascript/Node;->putIntProp(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3485
    :cond_8
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v9

    :goto_2
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 3486
    throw v1
.end method

.method private parse()Lorg/mozilla/javascript/ast/AstRoot;
    .locals 10

    .line 597
    new-instance v0, Lorg/mozilla/javascript/ast/AstRoot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;-><init>(I)V

    .line 598
    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 600
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 601
    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v2

    iput v2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    .line 602
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getTokenColumn()I

    move-result v2

    iput v2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenColumn:I

    .line 606
    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 608
    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->defaultUseStrictDirective:Z

    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 610
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    :cond_0
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 615
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v7

    if-gtz v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v8, 0x7a

    if-ne v7, v8, :cond_3

    .line 622
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :try_start_1
    iget-boolean v7, p0, Lorg/mozilla/javascript/Parser;->calledByCompileFunction:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    .line 625
    :goto_1
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v7
    :try_end_1
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 656
    :catch_0
    :goto_2
    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    goto :goto_4

    :cond_3
    const/16 v8, 0xaf

    if-ne v7, v8, :cond_4

    .line 633
    :try_start_2
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/AstNode;

    .line 634
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_3

    .line 636
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    if-eqz v4, :cond_6

    .line 638
    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    .line 641
    :cond_5
    const-string v9, "use strict"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 642
    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 643
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    .line 647
    :cond_6
    :goto_3
    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    .line 648
    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 649
    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_2
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 652
    :catch_1
    :try_start_3
    const-string v4, "msg.too.deep.parser.recursion"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 653
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_8

    goto :goto_2

    .line 659
    :goto_4
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportErrorsIfExists(I)V

    .line 662
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 665
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    .line 666
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 667
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Comment;

    .line 668
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/AstRoot;->addComment(Lorg/mozilla/javascript/ast/Comment;)V

    goto :goto_5

    .line 672
    :cond_7
    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 673
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->setBaseLineno(I)V

    .line 675
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    return-object v0

    .line 654
    :cond_8
    :try_start_4
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v4, v0, v3, v5, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 656
    :goto_6
    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 657
    throw v0
.end method

.method private parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 8

    const/16 v0, 0x5e

    const/4 v1, 0x1

    .line 681
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v0

    const/16 v4, 0xb4

    if-ge v0, v4, :cond_0

    if-eq p1, v2, :cond_0

    .line 684
    const-string v0, "msg.no.brace.body"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 690
    :goto_2
    iget v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 691
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 692
    new-instance v4, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v4, v2}, Lorg/mozilla/javascript/ast/Block;-><init>(I)V

    .line 699
    iget-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 700
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 702
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    if-eqz v0, :cond_4

    .line 705
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    .line 706
    new-instance v0, Lorg/mozilla/javascript/ast/ReturnStatement;

    .line 708
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v2

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v3

    invoke-direct {v0, v2, v3, p2}, Lorg/mozilla/javascript/ast/ReturnStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 710
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x19

    invoke-virtual {v0, v3, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 711
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p2

    invoke-virtual {v0, v6, p2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 712
    invoke-virtual {v4, v3, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    if-eqz p1, :cond_3

    const/16 p1, 0x1a

    .line 714
    invoke-virtual {v0, p1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 716
    :cond_3
    :goto_3
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/Block;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 717
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p1

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    goto/16 :goto_6

    :cond_4
    const/4 p1, 0x1

    .line 722
    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/4 v6, -0x1

    const/16 v7, 0x5f

    if-eq v0, v6, :cond_a

    if-eqz v0, :cond_a

    if-eq v0, v7, :cond_a

    const/16 v6, 0x7a

    if-eq v0, v6, :cond_8

    const/16 v6, 0xaf

    if-eq v0, v6, :cond_7

    .line 737
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz p1, :cond_9

    .line 739
    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 p1, 0x0

    goto :goto_5

    .line 742
    :cond_5
    const-string v7, "use strict"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 743
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/FunctionNode;->getDefaultParams()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 744
    const-string v6, "msg.default.args.use.strict"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 746
    :cond_6
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 747
    invoke-virtual {p2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    if-nez v5, :cond_9

    .line 749
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    goto :goto_5

    .line 729
    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 730
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    goto :goto_5

    .line 733
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 734
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    .line 755
    :cond_9
    :goto_5
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/Block;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_4

    .line 757
    :cond_a
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 758
    const-string p2, "msg.no.brace.after.body"

    invoke-direct {p0, v7, p2, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_b
    sub-int/2addr p1, v2

    .line 759
    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :catch_0
    :goto_6
    iget p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 765
    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    goto :goto_8

    .line 764
    :goto_7
    iget p2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 765
    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 766
    throw p1

    .line 768
    :goto_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    return-object v4
.end method

.method private parseFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;)V
    .locals 14

    .line 783
    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunctionParams:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunctionParams:I

    const/16 v0, 0x61

    .line 785
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    :cond_0
    :goto_0
    iget p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunctionParams:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunctionParams:I

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 794
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    .line 796
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v7, 0x62

    .line 797
    const-string v8, "msg.parm.after.rest"

    if-ne v6, v0, :cond_4

    .line 798
    :try_start_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->hasRestParameter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 800
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v6

    invoke-virtual {p0, v8, v6, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_3
    const/16 v2, 0x1c

    .line 803
    invoke-virtual {p1, v2, v1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto/16 :goto_4

    :cond_4
    const/16 v9, 0x5c

    const/16 v10, 0x60

    const/4 v11, 0x0

    if-eq v6, v9, :cond_11

    const/16 v9, 0x5e

    if-ne v6, v9, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v9, 0xb8

    if-ne v6, v9, :cond_7

    .line 855
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->hasRestParameter()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 857
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v8, v9, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 861
    :cond_6
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setHasRestParameter(Z)V

    .line 863
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 864
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v6

    .line 865
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v9

    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, -0x1

    const/4 v9, -0x1

    .line 868
    :goto_1
    const-string v12, "msg.no.parm"

    const/16 v13, 0x2c

    invoke-direct {p0, v13, v12, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_10

    if-nez v11, :cond_8

    .line 869
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->hasRestParameter()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 871
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v13, v12, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v12, v12, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v12, v13

    invoke-virtual {p0, v8, v13, v12}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 875
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v8

    if-eqz v11, :cond_9

    .line 877
    invoke-virtual {v8, v6, v9}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 879
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 881
    invoke-virtual {v8, v6}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 883
    :cond_a
    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 884
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v6

    .line 885
    invoke-virtual {p0, v10, v6}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    .line 886
    iget-boolean v8, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v8, :cond_e

    .line 887
    const-string v8, "eval"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "arguments"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 888
    :cond_b
    const-string v8, "msg.bad.id.strict"

    invoke-virtual {p0, v8, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_c
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 891
    const-string v8, "msg.dup.param.strict"

    invoke-virtual {p0, v8, v6}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_d
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    const/16 v8, 0x63

    .line 895
    invoke-direct {p0, v8, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 896
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v8

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_f

    .line 897
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Lorg/mozilla/javascript/ast/FunctionNode;->putDefaultParams(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 899
    :cond_f
    const-string v6, "msg.default.args"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_3

    .line 903
    :cond_10
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_3

    .line 807
    :cond_11
    :goto_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->hasRestParameter()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 809
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v8, v9, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 812
    :cond_12
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringAssignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    if-nez v4, :cond_13

    .line 814
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 817
    :cond_13
    instance-of v8, v6, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v8, :cond_15

    .line 830
    move-object v8, v6

    check-cast v8, Lorg/mozilla/javascript/ast/Assignment;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    .line 831
    check-cast v6, Lorg/mozilla/javascript/ast/Assignment;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 832
    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 833
    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 834
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v9

    .line 835
    invoke-virtual {p0, v10, v9, v11}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    if-nez v5, :cond_14

    .line 837
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 839
    :cond_14
    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-interface {v5, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 842
    :cond_15
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 843
    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 847
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v8

    .line 848
    invoke-virtual {p0, v10, v8, v11}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 849
    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :cond_16
    :goto_3
    invoke-direct {p0, v7, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_4
    if-eqz v4, :cond_19

    .line 909
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 911
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-eqz v5, :cond_17

    .line 914
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/AstNode;

    goto :goto_6

    :cond_17
    move-object v7, v3

    .line 919
    :goto_6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/javascript/Node;

    .line 920
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    const/16 v9, 0x87

    .line 917
    invoke-virtual {p0, v9, v8, v6, v7}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 922
    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_5

    :cond_18
    const/16 v3, 0x17

    .line 924
    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 927
    :cond_19
    const-string v2, "msg.no.paren.after.parms"

    invoke-direct {p0, v0, v2, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRp(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 931
    :goto_7
    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunctionParams:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunctionParams:I

    .line 932
    throw p1
.end method

.method private peekFlaggedToken()I
    .locals 1

    .line 417
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    .line 418
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return v0
.end method

.method private peekToken()I
    .locals 6

    .line 381
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    if-eqz v0, :cond_0

    .line 382
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    return v0

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/16 v4, 0xaf

    if-ne v0, v4, :cond_3

    :cond_1
    if-ne v0, v3, :cond_2

    .line 392
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v0

    const/4 v2, 0x1

    goto :goto_0

    .line 394
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 395
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getAndResetCurrentComment()Ljava/lang/String;

    move-result-object v3

    .line 396
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getTokenStartLineno()I

    move-result v4

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v5}, Lorg/mozilla/javascript/TokenStream;->getTokenColumn()I

    move-result v5

    invoke-direct {p0, v4, v5, v3}, Lorg/mozilla/javascript/Parser;->recordComment(IILjava/lang/String;)V

    .line 403
    :cond_3
    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    if-eqz v2, :cond_4

    const/high16 v1, 0x10000

    :cond_4
    or-int/2addr v1, v0

    .line 404
    iput v1, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return v0

    .line 399
    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v0

    goto :goto_0
.end method

.method private peekTokenOrEOL()I
    .locals 3

    .line 452
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    .line 454
    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private peekUntilNonComment(I)I
    .locals 1

    :goto_0
    const/16 v0, 0xaf

    if-ne p1, v0, :cond_0

    .line 1613
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1614
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;
    .locals 3

    .line 3991
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x62

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x2c

    if-ne p2, v1, :cond_2

    .line 3992
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 3994
    invoke-virtual {p2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p2

    const/16 v1, 0xb4

    if-lt p2, v1, :cond_2

    .line 3995
    iget-boolean p2, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 3996
    invoke-virtual {p2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p2

    const/16 v0, 0xc8

    if-ge p2, v0, :cond_1

    .line 3997
    const-string p2, "msg.bad.object.init"

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3999
    :cond_1
    new-instance p2, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/mozilla/javascript/ast/Name;-><init>(ILjava/lang/String;)V

    .line 4000
    new-instance v0, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    .line 4001
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsShorthand(Z)V

    .line 4002
    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v0

    :cond_2
    const/16 p2, 0x63

    if-ne v0, p2, :cond_3

    .line 4006
    new-instance v0, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    .line 4007
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 4008
    new-instance v1, Lorg/mozilla/javascript/ast/Assignment;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/mozilla/javascript/ast/Assignment;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 4009
    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 4010
    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v0

    :cond_3
    const/16 p2, 0x74

    .line 4013
    const-string v0, "msg.no.colon.prop"

    invoke-direct {p0, p2, v0, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 4014
    new-instance p2, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {p2}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    .line 4015
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    .line 4016
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-object p2
.end method

.method private primaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 4

    .line 3336
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekFlaggedToken()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    packed-switch v1, :pswitch_data_0

    .line 3439
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3440
    const-string v0, "msg.syntax"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3397
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3398
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3399
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 3400
    new-instance v3, Lorg/mozilla/javascript/ast/KeywordLiteral;

    sub-int/2addr v0, v2

    invoke-direct {v3, v2, v0, v1}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    .line 3401
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v3

    .line 3377
    :pswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3378
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;

    move-result-object v0

    return-object v0

    .line 3366
    :pswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3367
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->name(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3420
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3421
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->templateLiteral(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3353
    :sswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3354
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v2, v0}, Lorg/mozilla/javascript/Parser;->let(ZI)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3361
    :sswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3362
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    .line 3363
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->attributeAccess()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3424
    :sswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3425
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.reserved.id"

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3341
    :sswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v0, 0x2

    .line 3342
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    return-object v0

    .line 3357
    :sswitch_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3358
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parenExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3349
    :sswitch_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3350
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v0

    return-object v0

    .line 3345
    :sswitch_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3346
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->arrayLiteral()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3372
    :pswitch_3
    :sswitch_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3373
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->createNumericLiteral(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 3406
    :sswitch_9
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionParams()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->insideMethod:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 3407
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowSuper()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3415
    :cond_2
    const-string v0, "msg.super.shorthand.function"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_1

    .line 3408
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3409
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3410
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 3411
    new-instance v3, Lorg/mozilla/javascript/ast/KeywordLiteral;

    sub-int/2addr v0, v2

    invoke-direct {v3, v2, v0, v1}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    .line 3412
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v3

    .line 3382
    :sswitch_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3384
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/TokenStream;->readRegExp(I)V

    .line 3385
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 3386
    new-instance v2, Lorg/mozilla/javascript/ast/RegExpLiteral;

    sub-int/2addr v0, v1

    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;-><init>(II)V

    .line 3387
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;->setValue(Ljava/lang/String;)V

    .line 3388
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->readAndClearRegExpFlags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;->setFlags(Ljava/lang/String;)V

    .line 3389
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v2

    .line 3434
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3435
    const-string v0, "msg.unexpected.eof"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_1

    .line 3429
    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3444
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3445
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_a
        0x4f -> :sswitch_9
        0x59 -> :sswitch_8
        0x5c -> :sswitch_7
        0x5e -> :sswitch_6
        0x60 -> :sswitch_5
        0x6f -> :sswitch_a
        0x7a -> :sswitch_4
        0x8c -> :sswitch_3
        0xa1 -> :sswitch_2
        0xa7 -> :sswitch_1
        0xb4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processDestructuringDefaults(ILorg/mozilla/javascript/Node;Ljava/util/List;Lorg/mozilla/javascript/ast/Assignment;Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Parser$Transformer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mozilla/javascript/ast/Assignment;",
            "Lorg/mozilla/javascript/Node;",
            "I",
            "Lorg/mozilla/javascript/Parser$Transformer;",
            ")V"
        }
    .end annotation

    .line 4506
    invoke-virtual {p4}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 4508
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 4509
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    .line 4516
    invoke-virtual {p4}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p4

    if-eqz p7, :cond_0

    invoke-interface {p7, p4}, Lorg/mozilla/javascript/Parser$Transformer;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p4

    .line 4518
    :cond_0
    new-instance v2, Lorg/mozilla/javascript/Node;

    new-instance v3, Lorg/mozilla/javascript/Node;

    .line 4521
    const-string v4, "undefined"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/16 v6, 0x33

    invoke-direct {v3, v6, v5, p5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 v5, 0x73

    invoke-direct {v2, v5, v3, p4, p5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4525
    new-instance p5, Lorg/mozilla/javascript/Node;

    new-instance v3, Lorg/mozilla/javascript/Node;

    .line 4528
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {v3, v6, v4, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {p5, v5, v3, v2, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    if-nez p7, :cond_1

    .line 4534
    iget-object p7, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p7, v2, p4}, Lorg/mozilla/javascript/ast/ScriptNode;->putDestructuringRvalues(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4537
    :cond_1
    new-instance p4, Lorg/mozilla/javascript/Node;

    const/16 p7, 0x36

    const/4 v0, 0x0

    invoke-virtual {p0, p7, v1, v0}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p7

    invoke-direct {p4, p6, p7, p5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2, p4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x1

    .line 4539
    invoke-virtual {p0, p1, v1, p2}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 4540
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private propertyAccess(ILorg/mozilla/javascript/ast/AstNode;Z)Lorg/mozilla/javascript/ast/AstNode;
    .locals 10

    if-nez p2, :cond_0

    .line 3076
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 3077
    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 3078
    const-string p1, "msg.optional.super"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3079
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    .line 3083
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    .line 3084
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3085
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 3086
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/16 v3, 0x9d

    if-ne p1, v3, :cond_2

    .line 3089
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 3093
    :goto_0
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v4

    const/16 v5, 0x2c

    const-string v6, "msg.no.name.after.dot"

    if-nez v4, :cond_5

    .line 3094
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result p1

    if-eq p1, v5, :cond_4

    .line 3095
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 3096
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 3098
    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 3099
    invoke-virtual {p3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p3

    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 3097
    invoke-static {p1, p3, v3}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3101
    :cond_3
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x1

    const/16 p3, 0x21

    .line 3104
    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    .line 3105
    new-instance p3, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {p3, p2, p1, v1}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/Name;I)V

    .line 3106
    invoke-virtual {p3, v0, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object p3

    .line 3111
    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v4

    const/16 v7, 0x17

    const/16 v8, 0xba

    const/4 v9, -0x1

    if-eq v4, v7, :cond_f

    if-eq v4, v5, :cond_e

    const/16 v5, 0x37

    if-eq v4, v5, :cond_d

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_b

    const/16 v5, 0x60

    if-eq v4, v5, :cond_9

    const/16 v5, 0x8c

    if-eq v4, v5, :cond_8

    const/16 v5, 0xa1

    if-eq v4, v5, :cond_7

    .line 3166
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3168
    invoke-static {v4}, Lorg/mozilla/javascript/Token;->keywordToName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3170
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v7

    invoke-direct {p0, v5, v4, v6, v7}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;II)V

    .line 3171
    invoke-direct {p0, v9, v3}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    goto/16 :goto_1

    .line 3175
    :cond_6
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3176
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    .line 3133
    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->attributeAccess()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    goto/16 :goto_1

    .line 3138
    :cond_8
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    .line 3139
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v7

    invoke-direct {p0, v5, v4, v6, v7}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;II)V

    .line 3140
    invoke-direct {p0, v9, v3}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    goto :goto_1

    :cond_9
    if-ne p1, v8, :cond_a

    .line 3159
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lorg/mozilla/javascript/Parser;->makeFunctionCall(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/FunctionCall;

    move-result-object p1

    return-object p1

    .line 3161
    :cond_a
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3162
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    :cond_b
    if-ne p1, v8, :cond_c

    .line 3147
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3148
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->makeElemGet(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ElementGet;

    move-result-object p1

    .line 3149
    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-object p1

    .line 3152
    :cond_c
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3153
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    .line 3115
    :cond_d
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v6

    const-string v7, "throw"

    invoke-direct {p0, v4, v7, v5, v6}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;II)V

    .line 3116
    invoke-direct {p0, v9, v3}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    goto :goto_1

    .line 3121
    :cond_e
    invoke-direct {p0, v9, v3}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    goto :goto_1

    .line 3126
    :cond_f
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v6

    const-string v7, "*"

    invoke-direct {p0, v4, v7, v5, v6}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;II)V

    .line 3127
    invoke-direct {p0, v9, v3}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 3179
    :goto_1
    instance-of v4, v3, Lorg/mozilla/javascript/ast/XmlRef;

    if-eqz v4, :cond_10

    .line 3180
    new-instance v5, Lorg/mozilla/javascript/ast/XmlMemberGet;

    invoke-direct {v5}, Lorg/mozilla/javascript/ast/XmlMemberGet;-><init>()V

    goto :goto_2

    :cond_10
    new-instance v5, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {v5}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>()V

    :goto_2
    if-eqz v4, :cond_11

    const/16 v4, 0x79

    if-ne p1, v4, :cond_11

    .line 3181
    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    :cond_11
    if-eqz p3, :cond_12

    .line 3183
    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 3185
    :cond_12
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    .line 3186
    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/AstNode;->setPosition(I)V

    .line 3187
    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p3

    sub-int/2addr p3, p1

    invoke-virtual {v5, p3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    sub-int/2addr v1, p1

    .line 3188
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    .line 3189
    invoke-virtual {v5, v0, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 3190
    invoke-virtual {v5, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3191
    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v5
.end method

.method private propertyName(II)Lorg/mozilla/javascript/ast/AstNode;
    .locals 10

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    move v1, p1

    goto :goto_0

    .line 3252
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    .line 3254
    iget v4, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v4

    const/16 v6, 0x9e

    .line 3257
    invoke-direct {p0, v6, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3259
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3261
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v6

    const/16 v7, 0x17

    if-eq v6, v7, :cond_3

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_2

    const/16 p2, 0x5c

    if-eq v6, p2, :cond_1

    .line 3278
    const-string p1, "msg.no.name.after.coloncolon"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3279
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    .line 3275
    :cond_1
    invoke-direct {p0, p1, v4, v5}, Lorg/mozilla/javascript/Parser;->xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;

    move-result-object p1

    return-object p1

    .line 3264
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v6

    goto :goto_1

    .line 3269
    :cond_3
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v8

    const-string v9, "*"

    invoke-direct {p0, v6, v9, v7, v8}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;II)V

    const/4 v6, 0x0

    .line 3270
    invoke-direct {p0, v6, v0}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v6

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    move-object v6, v4

    move-object v4, v5

    const/4 v5, -0x1

    :goto_1
    if-nez v4, :cond_5

    if-nez p2, :cond_5

    if-ne p1, v0, :cond_5

    return-object v6

    .line 3287
    :cond_5
    new-instance p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    invoke-static {v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p2, v1, v0}, Lorg/mozilla/javascript/ast/XmlPropRef;-><init>(II)V

    .line 3288
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ast/XmlRef;->setAtPos(I)V

    .line 3289
    invoke-virtual {p2, v4}, Lorg/mozilla/javascript/ast/XmlRef;->setNamespace(Lorg/mozilla/javascript/ast/Name;)V

    .line 3290
    invoke-virtual {p2, v5}, Lorg/mozilla/javascript/ast/XmlRef;->setColonPos(I)V

    .line 3291
    invoke-virtual {p2, v6}, Lorg/mozilla/javascript/ast/XmlPropRef;->setPropName(Lorg/mozilla/javascript/ast/Name;)V

    .line 3292
    invoke-virtual {p2, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object p2
.end method

.method private recordComment(IILjava/lang/String;)V
    .locals 5

    .line 342
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    .line 345
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/ast/Comment;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 346
    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v3, v3, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    invoke-direct {v0, v2, v1, v3, p3}, Lorg/mozilla/javascript/ast/Comment;-><init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v1, v1, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    sget-object v2, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 348
    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingLocalJsDocComments()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    new-instance v1, Lorg/mozilla/javascript/ast/Comment;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 350
    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v2

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v4, v4, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    invoke-direct {v1, v3, v2, v4, p3}, Lorg/mozilla/javascript/ast/Comment;-><init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    .line 351
    invoke-virtual {v1, p1, p2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 353
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 354
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V
    .locals 4

    .line 2198
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2199
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2200
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2201
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 2202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    goto :goto_0

    .line 2204
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v1, :cond_3

    .line 2206
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v2

    const-string v3, "msg.dup.label"

    if-eqz v2, :cond_2

    .line 2207
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabelByName(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Label;

    move-result-object v1

    .line 2208
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    invoke-virtual {p0, v3, v2, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 2210
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 2213
    :cond_3
    :goto_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->addLabel(Lorg/mozilla/javascript/ast/Label;)V

    .line 2214
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private relExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2666
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->shiftExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2668
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x39

    if-eq v1, v3, :cond_0

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 2671
    :cond_0
    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    if-eqz v3, :cond_1

    :goto_1
    return-object v0

    .line 2678
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2679
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->shiftExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private restoreRelativeLoopPosition(Lorg/mozilla/javascript/ast/Loop;)V
    .locals 1

    .line 535
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_0
    return-void
.end method

.method private returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2076
    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v2

    const-string v3, "msg.bad.yield"

    const/4 v4, 0x4

    if-nez v2, :cond_1

    if-ne v1, v4, :cond_0

    .line 2077
    const-string v2, "msg.bad.return"

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2079
    :cond_1
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2080
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v5

    iget-object v6, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 v8, 0x1

    const/16 v9, 0xc8

    const/16 v10, 0x4e

    const/4 v11, 0x0

    if-ne v1, v10, :cond_2

    .line 2083
    iget-object v12, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 2084
    invoke-virtual {v12}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v12

    if-lt v12, v9, :cond_2

    .line 2085
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v12

    const/16 v13, 0x17

    if-ne v12, v13, :cond_2

    .line 2087
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 2092
    :goto_1
    invoke-direct {v0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    if-eqz v13, :cond_5

    if-eq v13, v8, :cond_5

    if-eq v13, v10, :cond_3

    const/16 v8, 0x5b

    if-eq v13, v8, :cond_5

    const/16 v8, 0x5d

    if-eq v13, v8, :cond_5

    const/16 v8, 0x5f

    if-eq v13, v8, :cond_5

    const/16 v8, 0x61

    if-eq v13, v8, :cond_5

    goto :goto_2

    .line 2102
    :cond_3
    iget-object v8, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v8

    if-ge v8, v9, :cond_4

    goto :goto_3

    .line 2108
    :cond_4
    :goto_2
    invoke-direct {v0, v11}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2109
    invoke-static {v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v8, 0x0

    move-object v15, v8

    move v8, v6

    move-object v6, v15

    .line 2112
    :goto_4
    iget v9, v0, Lorg/mozilla/javascript/Parser;->endFlags:I

    .line 2115
    const-string v10, ""

    if-ne v1, v4, :cond_7

    if-nez v6, :cond_6

    const/4 v4, 0x2

    :cond_6
    or-int v1, v9, v4

    .line 2116
    iput v1, v0, Lorg/mozilla/javascript/Parser;->endFlags:I

    .line 2117
    new-instance v1, Lorg/mozilla/javascript/ast/ReturnStatement;

    sub-int/2addr v8, v7

    invoke-direct {v1, v7, v8, v6}, Lorg/mozilla/javascript/ast/ReturnStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2120
    iget v3, v0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const/4 v4, 0x6

    invoke-static {v9, v3, v4}, Lorg/mozilla/javascript/Parser;->nowAllSet(III)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2121
    const-string v3, "msg.return.inconsistent"

    invoke-virtual {v0, v3, v10, v7, v8}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_5

    .line 2123
    :cond_7
    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2124
    :cond_8
    iget v1, v0, Lorg/mozilla/javascript/Parser;->endFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/mozilla/javascript/Parser;->endFlags:I

    .line 2125
    new-instance v1, Lorg/mozilla/javascript/ast/Yield;

    sub-int/2addr v8, v7

    invoke-direct {v1, v7, v8, v6, v12}, Lorg/mozilla/javascript/ast/Yield;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    .line 2126
    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 2127
    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->setIsGenerator()V

    if-nez p2, :cond_9

    .line 2129
    invoke-virtual {v1, v2, v5}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2130
    new-instance v3, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;)V

    move-object v1, v3

    .line 2135
    :cond_9
    :goto_5
    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, v0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const/16 v4, 0xc

    .line 2136
    invoke-static {v9, v3, v4}, Lorg/mozilla/javascript/Parser;->nowAllSet(III)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2137
    iget-object v3, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v3, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 2138
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2139
    iget-object v3, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v3, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2140
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_6

    .line 2143
    :cond_a
    const-string v4, "msg.generator.returns"

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2141
    :cond_b
    :goto_6
    const-string v3, "msg.anon.generator.returns"

    invoke-virtual {v0, v3, v10}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    :cond_c
    :goto_7
    invoke-virtual {v1, v2, v5}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v1
.end method

.method private saveNameTokenData(ILjava/lang/String;II)V
    .locals 0

    .line 4237
    iput p1, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    .line 4238
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    .line 4239
    iput p3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    .line 4240
    iput p4, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenColumn:I

    return-void
.end method

.method private setupDefaultValues(Ljava/lang/String;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ILorg/mozilla/javascript/Parser$Transformer;)V
    .locals 5

    if-eqz p3, :cond_2

    if-eqz p5, :cond_0

    .line 4577
    invoke-interface {p5, p3}, Lorg/mozilla/javascript/Parser$Transformer;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    .line 4579
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/Node;

    new-instance v1, Lorg/mozilla/javascript/Node;

    .line 4582
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    const-string v3, "undefined"

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/16 v4, 0x33

    invoke-direct {v1, v4, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4584
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/16 v3, 0x73

    invoke-direct {v0, v3, v1, p3, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    if-nez p5, :cond_1

    .line 4587
    iget-object p5, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p5, v0, p3}, Lorg/mozilla/javascript/ast/ScriptNode;->putDestructuringRvalues(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4590
    :cond_1
    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 p5, 0x36

    const/4 v1, 0x0

    .line 4591
    invoke-virtual {p0, p5, p1, v1}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p3, p4, p1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4592
    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_2
    return-void
.end method

.method private shiftExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2688
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->addExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2690
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 2695
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2696
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->addExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private statement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    .line 1259
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, 0x1

    .line 1261
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statementHelper()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1263
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1264
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v3

    .line 1265
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1267
    instance-of v4, v2, Lorg/mozilla/javascript/ast/EmptyStatement;

    if-eqz v4, :cond_0

    .line 1268
    const-string v4, "msg.extra.trailing.semi"

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    .line 1269
    :cond_0
    const-string v4, "msg.no.side.effects"

    :goto_0
    const-string v5, ""

    .line 1272
    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v3

    .line 1266
    invoke-virtual {p0, v4, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1274
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0xaf

    if-ne v3, v4, :cond_2

    .line 1276
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    .line 1277
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1278
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1279
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    .line 1290
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v2

    .line 1291
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_4

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 1303
    :cond_4
    new-instance v1, Lorg/mozilla/javascript/ast/EmptyStatement;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    invoke-direct {v1, v0, v2}, Lorg/mozilla/javascript/ast/EmptyStatement;-><init>(II)V

    return-object v1
.end method

.method private statementHelper()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    .line 1308
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 1311
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_e

    const/16 v2, 0x37

    if-eq v0, v2, :cond_d

    const/16 v2, 0x4e

    if-eq v0, v2, :cond_10

    const/16 v2, 0x5e

    if-eq v0, v2, :cond_c

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_b

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_a

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_9

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_8

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_7

    const/16 v4, 0xa7

    if-eq v0, v4, :cond_5

    const/16 v2, 0xa8

    const/4 v4, 0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xae

    if-eq v0, v2, :cond_3

    const/16 v2, 0xaf

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 1409
    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v0

    .line 1410
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getTokenColumn()I

    move-result v1

    .line 1411
    new-instance v2, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v5

    xor-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 1412
    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    goto/16 :goto_0

    .line 1346
    :pswitch_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v0, :cond_1

    .line 1347
    const-string v0, "msg.no.with.strict"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1349
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->withStatement()Lorg/mozilla/javascript/ast/WithStatement;

    move-result-object v0

    return-object v0

    .line 1342
    :pswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->continueStatement()Lorg/mozilla/javascript/ast/ContinueStatement;

    move-result-object v2

    goto/16 :goto_0

    .line 1338
    :pswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->breakStatement()Lorg/mozilla/javascript/ast/BreakStatement;

    move-result-object v2

    goto/16 :goto_0

    .line 1328
    :pswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->forLoop()Lorg/mozilla/javascript/ast/Loop;

    move-result-object v0

    return-object v0

    .line 1325
    :pswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->doLoop()Lorg/mozilla/javascript/ast/DoLoop;

    move-result-object v0

    return-object v0

    .line 1322
    :pswitch_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->whileLoop()Lorg/mozilla/javascript/ast/WhileLoop;

    move-result-object v0

    return-object v0

    .line 1395
    :pswitch_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->defaultXmlNamespace()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    goto/16 :goto_0

    .line 1404
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    return-object v0

    .line 1371
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1372
    new-instance v2, Lorg/mozilla/javascript/ast/KeywordLiteral;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v1, v3

    invoke-direct {v2, v3, v1, v0}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    .line 1373
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    goto/16 :goto_0

    .line 1353
    :cond_4
    :pswitch_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1354
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    .line 1355
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    .line 1356
    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v2

    .line 1357
    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    goto :goto_0

    .line 1361
    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->letStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 1362
    instance-of v1, v0, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    if-ne v1, v2, :cond_6

    move-object v2, v0

    goto :goto_0

    :cond_6
    return-object v0

    .line 1384
    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1385
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1386
    new-instance v1, Lorg/mozilla/javascript/ast/EmptyStatement;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-direct {v1, v0, v2}, Lorg/mozilla/javascript/ast/EmptyStatement;-><init>(II)V

    .line 1387
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v1

    .line 1331
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->tryStatement()Lorg/mozilla/javascript/ast/TryStatement;

    move-result-object v0

    return-object v0

    .line 1319
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->switchStatement()Lorg/mozilla/javascript/ast/SwitchStatement;

    move-result-object v0

    return-object v0

    .line 1316
    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->ifStatement()Lorg/mozilla/javascript/ast/IfStatement;

    move-result-object v0

    return-object v0

    .line 1391
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v0, 0x3

    .line 1392
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    return-object v0

    .line 1377
    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->block()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->throwStatement()Lorg/mozilla/javascript/ast/ThrowStatement;

    move-result-object v2

    goto :goto_0

    .line 1399
    :cond_e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nameOrLabel()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 1400
    instance-of v0, v2, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    return-object v2

    .line 1367
    :cond_10
    invoke-direct {p0, v0, v3}, Lorg/mozilla/javascript/Parser;->returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 1416
    :goto_0
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v2

    .line 1380
    :cond_11
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1381
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private statements()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    const/4 v0, 0x0

    .line 1227
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method private statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 3

    .line 1212
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 1213
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1214
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1215
    :cond_1
    new-instance p1, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/ast/Block;-><init>(I)V

    .line 1216
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 1219
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_2

    .line 1220
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->addChild(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    .line 1222
    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object p1
.end method

.method private switchStatement()Lorg/mozilla/javascript/ast/SwitchStatement;
    .locals 17

    move-object/from16 v1, p0

    .line 1477
    iget v0, v1, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_0

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1478
    :cond_0
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1479
    iget-object v0, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1481
    new-instance v2, Lorg/mozilla/javascript/ast/SwitchStatement;

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/ast/SwitchStatement;-><init>(I)V

    .line 1482
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v3

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    const/16 v3, 0x60

    .line 1483
    const-string v4, "msg.no.paren.switch"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/SwitchStatement;->setLp(I)V

    :cond_1
    const/4 v3, 0x0

    .line 1485
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1486
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/SwitchStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1487
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/Parser;->enterSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)V

    .line 1490
    :try_start_0
    const-string v4, "msg.no.paren.after.switch"

    const/16 v6, 0x61

    invoke-direct {v1, v6, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1491
    iget-object v4, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/SwitchStatement;->setRp(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 1493
    :cond_2
    :goto_0
    const-string v4, "msg.no.brace.switch"

    const/16 v6, 0x5e

    invoke-direct {v1, v6, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    const/4 v4, 0x0

    .line 1499
    :goto_1
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v6

    .line 1500
    iget-object v7, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1501
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v8

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v10, 0x5f

    if-eq v6, v10, :cond_a

    const/16 v11, 0xaf

    if-eq v6, v11, :cond_9

    .line 1503
    const-string v12, "msg.no.colon.case"

    const/16 v13, 0x74

    const/16 v14, 0x81

    const/16 v15, 0x80

    if-eq v6, v15, :cond_5

    if-eq v6, v14, :cond_3

    .line 1525
    :try_start_1
    const-string v0, "msg.bad.switch"

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    if-eqz v4, :cond_4

    .line 1515
    const-string v4, "msg.double.switch.default"

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1518
    :cond_4
    invoke-direct {v1, v13, v12, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_2

    .line 1509
    :cond_5
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 1510
    invoke-direct {v1, v13, v12, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-object/from16 v16, v6

    move v6, v4

    move-object/from16 v4, v16

    .line 1529
    :goto_2
    new-instance v12, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-direct {v12, v7}, Lorg/mozilla/javascript/ast/SwitchCase;-><init>(I)V

    .line 1530
    invoke-virtual {v12, v4}, Lorg/mozilla/javascript/ast/SwitchCase;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1531
    iget-object v4, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v4, v0

    invoke-virtual {v12, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 1532
    invoke-virtual {v12, v8, v9}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 1534
    :goto_3
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    if-eq v4, v10, :cond_8

    if-eq v4, v15, :cond_8

    if-eq v4, v14, :cond_8

    if-eqz v4, :cond_8

    if-ne v4, v11, :cond_7

    .line 1539
    iget-object v4, v1, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Comment;

    .line 1540
    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1541
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v7

    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 1542
    invoke-virtual {v12, v4}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_4

    .line 1544
    :cond_6
    invoke-virtual {v12, v4}, Lorg/mozilla/javascript/ast/SwitchCase;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1546
    :goto_4
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_3

    .line 1549
    :cond_7
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1550
    invoke-virtual {v12, v4}, Lorg/mozilla/javascript/ast/SwitchCase;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_3

    .line 1552
    :cond_8
    invoke-virtual {v2, v12}, Lorg/mozilla/javascript/ast/SwitchStatement;->addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V

    move v4, v6

    goto/16 :goto_1

    .line 1521
    :cond_9
    iget-object v6, v1, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/AstNode;

    .line 1522
    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ast/AstNode;->addChild(Lorg/mozilla/javascript/ast/AstNode;)V

    goto/16 :goto_1

    .line 1505
    :cond_a
    iget-object v3, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1555
    :goto_5
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->exitSwitch()V

    return-object v2

    :goto_6
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->exitSwitch()V

    .line 1556
    throw v0
.end method

.method private taggedTemplateLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 2

    const/4 v0, 0x1

    .line 3059
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->templateLiteral(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 3060
    new-instance v1, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;

    invoke-direct {v1}, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;-><init>()V

    .line 3061
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3062
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;->setTemplateLiteral(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3063
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v1
.end method

.method private templateLiteral(Z)Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    .line 4103
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 4104
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 4105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4106
    new-instance v4, Lorg/mozilla/javascript/ast/TemplateLiteral;

    invoke-direct {v4, v1}, Lorg/mozilla/javascript/ast/TemplateLiteral;-><init>(I)V

    .line 4108
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 4109
    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/TokenStream;->readTemplateLiteral(Z)I

    move-result v5

    :goto_0
    const/16 v8, 0xb6

    if-ne v5, v8, :cond_1

    .line 4111
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->createTemplateLiteralCharacters(I)Lorg/mozilla/javascript/ast/TemplateCharacters;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 4112
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x5f

    .line 4113
    const-string v6, "msg.syntax"

    invoke-direct {p0, v5, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 4114
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    add-int/2addr v6, v7

    .line 4115
    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/TokenStream;->readTemplateLiteral(Z)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne v5, p1, :cond_2

    .line 4118
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    .line 4121
    :cond_2
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->createTemplateLiteralCharacters(I)Lorg/mozilla/javascript/ast/TemplateCharacters;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4122
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 4123
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/TemplateLiteral;->setElements(Ljava/util/List;)V

    sub-int/2addr p1, v1

    .line 4124
    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 4125
    invoke-virtual {v4, v0, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v4
.end method

.method private throwStatement()Lorg/mozilla/javascript/ast/ThrowStatement;
    .locals 5

    .line 1916
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1917
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1918
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 1919
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1922
    const-string v3, "msg.bad.throw.eol"

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    .line 1924
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 1925
    new-instance v4, Lorg/mozilla/javascript/ast/ThrowStatement;

    invoke-direct {v4, v0, v3}, Lorg/mozilla/javascript/ast/ThrowStatement;-><init>(ILorg/mozilla/javascript/ast/AstNode;)V

    .line 1926
    invoke-virtual {v4, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v4
.end method

.method private tryStatement()Lorg/mozilla/javascript/ast/TryStatement;
    .locals 21

    move-object/from16 v1, p0

    .line 1771
    iget v0, v1, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1772
    :cond_0
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1775
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v0

    .line 1777
    iget-object v2, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v3

    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v4

    .line 1779
    new-instance v5, Lorg/mozilla/javascript/ast/TryStatement;

    invoke-direct {v5, v2}, Lorg/mozilla/javascript/ast/TryStatement;-><init>(I)V

    .line 1781
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    :goto_0
    const/16 v7, 0xaf

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    .line 1783
    iget-object v6, v1, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/Comment;

    .line 1784
    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1785
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1786
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    goto :goto_0

    :cond_1
    const/16 v9, 0x5e

    if-eq v6, v9, :cond_2

    .line 1789
    const-string v6, "msg.no.brace.try"

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1791
    :cond_2
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 1792
    invoke-static {v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v10

    .line 1797
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v11

    :goto_1
    if-ne v11, v7, :cond_3

    .line 1799
    iget-object v11, v1, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mozilla/javascript/ast/Comment;

    .line 1800
    invoke-virtual {v5, v11}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1801
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1802
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v11

    goto :goto_1

    :cond_3
    const/16 v7, 0x89

    if-ne v11, v7, :cond_11

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1805
    :goto_2
    invoke-direct {v1, v7, v8}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1806
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    if-eqz v15, :cond_4

    .line 1808
    const-string v10, "msg.catch.unreachable"

    invoke-virtual {v1, v10}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1810
    :cond_4
    iget-object v10, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v10, v10, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1814
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v7

    .line 1815
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v13

    .line 1819
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v12

    const-string v14, "msg.no.paren.catch"

    if-eq v12, v9, :cond_b

    const/16 v9, 0x60

    if-eq v12, v9, :cond_5

    .line 1860
    invoke-virtual {v1, v14}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    move/from16 v20, v2

    const/16 v8, 0x5e

    goto/16 :goto_5

    .line 1822
    :cond_5
    invoke-direct {v1, v9, v8}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    .line 1823
    iget-object v9, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v12, 0x2c

    .line 1824
    const-string v14, "msg.bad.catchcond"

    invoke-direct {v1, v12, v14, v8}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 1826
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v12

    .line 1827
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1829
    invoke-virtual {v12, v11}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 1831
    :cond_6
    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v11

    .line 1832
    iget-boolean v8, v1, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v8, :cond_8

    .line 1833
    const-string v8, "eval"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "arguments"

    .line 1834
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1835
    :cond_7
    const-string v8, "msg.bad.id.strict"

    invoke-virtual {v1, v8, v11}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v8, 0x7d

    const/4 v11, 0x1

    .line 1839
    invoke-direct {v1, v8, v11}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1840
    iget-object v8, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v11, 0x0

    .line 1841
    invoke-direct {v1, v11}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v18

    goto :goto_3

    :cond_9
    const/4 v8, -0x1

    const/4 v15, 0x1

    const/16 v18, 0x0

    :goto_3
    const/16 v11, 0x61

    move/from16 v20, v2

    const/4 v2, 0x1

    .line 1846
    invoke-direct {v1, v11, v14, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1847
    iget-object v11, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_4

    :cond_a
    const/4 v11, -0x1

    .line 1849
    :goto_4
    const-string v14, "msg.no.brace.catchblock"

    move/from16 v19, v8

    const/16 v8, 0x5e

    invoke-direct {v1, v8, v14, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-object/from16 v14, v18

    move/from16 v2, v19

    goto :goto_6

    :cond_b
    move/from16 v20, v2

    const/4 v2, 0x1

    const/16 v8, 0x5e

    .line 1853
    iget-object v9, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v9}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v9

    const/16 v11, 0xc8

    if-lt v9, v11, :cond_c

    .line 1854
    invoke-direct {v1, v8, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    goto :goto_5

    .line 1856
    :cond_c
    invoke-virtual {v1, v14}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :goto_5
    const/4 v2, -0x1

    const/4 v9, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 1864
    :goto_6
    new-instance v8, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v8, v10}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    move/from16 v18, v15

    .line 1865
    new-instance v15, Lorg/mozilla/javascript/ast/CatchClause;

    invoke-direct {v15, v10}, Lorg/mozilla/javascript/ast/CatchClause;-><init>(I)V

    .line 1866
    invoke-virtual {v15, v7, v13}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 1867
    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 1869
    :try_start_0
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-virtual {v1}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 1874
    invoke-static {v8}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v7

    .line 1875
    invoke-virtual {v15, v12}, Lorg/mozilla/javascript/ast/CatchClause;->setVarName(Lorg/mozilla/javascript/ast/Name;)V

    .line 1876
    invoke-virtual {v15, v14}, Lorg/mozilla/javascript/ast/CatchClause;->setCatchCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1877
    invoke-virtual {v15, v8}, Lorg/mozilla/javascript/ast/CatchClause;->setBody(Lorg/mozilla/javascript/ast/Scope;)V

    const/4 v8, -0x1

    if-eq v2, v8, :cond_d

    sub-int/2addr v2, v10

    .line 1879
    invoke-virtual {v15, v2}, Lorg/mozilla/javascript/ast/CatchClause;->setIfPosition(I)V

    .line 1881
    :cond_d
    invoke-virtual {v15, v9, v11}, Lorg/mozilla/javascript/ast/CatchClause;->setParens(II)V

    const/16 v2, 0x5f

    .line 1883
    const-string v8, "msg.no.brace.after.body"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v8, v11}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    goto :goto_7

    :cond_e
    move v2, v7

    :goto_7
    sub-int v7, v2, v10

    .line 1884
    invoke-virtual {v15, v7}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    if-nez v16, :cond_f

    .line 1885
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    move-object/from16 v7, v16

    .line 1886
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v2

    move-object/from16 v16, v7

    move/from16 v15, v18

    move/from16 v2, v20

    const/16 v7, 0x89

    const/4 v8, 0x1

    const/16 v9, 0x5e

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 1871
    invoke-virtual {v1}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 1872
    throw v0

    :cond_10
    move/from16 v20, v2

    move-object/from16 v7, v16

    const/16 v2, 0x8a

    const/4 v11, 0x1

    goto :goto_9

    :cond_11
    move/from16 v20, v2

    const/16 v2, 0x8a

    if-eq v11, v2, :cond_12

    .line 1889
    const-string v7, "msg.try.no.catchfinally"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v7, v11}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    goto :goto_8

    :cond_12
    const/4 v11, 0x1

    :goto_8
    const/4 v7, 0x0

    .line 1893
    :goto_9
    invoke-direct {v1, v2, v11}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1894
    iget-object v2, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1895
    invoke-direct {v1}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    .line 1896
    invoke-static {v13}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v10

    goto :goto_a

    :cond_13
    const/4 v8, -0x1

    const/4 v13, 0x0

    :goto_a
    sub-int v10, v10, v20

    .line 1899
    invoke-virtual {v5, v10}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 1900
    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/TryStatement;->setTryBlock(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1901
    invoke-virtual {v5, v7}, Lorg/mozilla/javascript/ast/TryStatement;->setCatchClauses(Ljava/util/List;)V

    .line 1902
    invoke-virtual {v5, v13}, Lorg/mozilla/javascript/ast/TryStatement;->setFinallyBlock(Lorg/mozilla/javascript/ast/AstNode;)V

    const/4 v2, -0x1

    if-eq v8, v2, :cond_14

    sub-int v8, v8, v20

    .line 1904
    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/ast/TryStatement;->setFinallyPosition(I)V

    .line 1906
    :cond_14
    invoke-virtual {v5, v3, v4}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    if-eqz v0, :cond_15

    .line 1909
    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_15
    return-object v5
.end method

.method private unaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    .line 2758
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_0

    .line 2760
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2761
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0xe

    const/16 v2, 0x78

    const/16 v3, 0x77

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x15

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 2797
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2798
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    .line 2799
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 2800
    new-instance v3, Lorg/mozilla/javascript/ast/UpdateExpression;

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v0, v5, v4}, Lorg/mozilla/javascript/ast/UpdateExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2801
    invoke-virtual {v3, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2802
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->checkBadIncDec(Lorg/mozilla/javascript/ast/UpdateExpression;)V

    return-object v3

    .line 2806
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2807
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    .line 2808
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 2809
    new-instance v3, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2810
    invoke-virtual {v3, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v3

    .line 2787
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2788
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    .line 2789
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    .line 2791
    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    const/16 v5, 0x1d

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2792
    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v2

    .line 2778
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2779
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v0

    .line 2780
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v1

    .line 2782
    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2783
    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v2

    .line 2770
    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2771
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    .line 2772
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    .line 2773
    new-instance v3, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2774
    invoke-virtual {v3, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v3

    .line 2818
    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2819
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2820
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->xmlInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    .line 2826
    :cond_7
    :goto_0
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2828
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v1

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_8

    return-object v0

    .line 2832
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2833
    new-instance v2, Lorg/mozilla/javascript/ast/UpdateExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v2, v1, v3, v0, v4}, Lorg/mozilla/javascript/ast/UpdateExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    .line 2834
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2835
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->checkBadIncDec(Lorg/mozilla/javascript/ast/UpdateExpression;)V

    return-object v2

    .line 2814
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2815
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0
.end method

.method private variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;
    .locals 12

    .line 2292
    new-instance v0, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/ast/VariableDeclaration;-><init>(I)V

    .line 2293
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setType(I)Lorg/mozilla/javascript/Node;

    .line 2294
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2295
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2297
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 2305
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2306
    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v4, 0x5c

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_4

    const/16 v4, 0x5e

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2c

    .line 2321
    const-string v4, "msg.bad.var"

    invoke-direct {p0, v1, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 2322
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    .line 2323
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v7

    invoke-virtual {v1, v4, v7}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2324
    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v4, :cond_3

    .line 2325
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2326
    const-string v7, "eval"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v7}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "arguments"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2327
    :cond_2
    const-string v7, "msg.bad.id.strict"

    invoke-virtual {p0, v7, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    invoke-virtual {p0, p1, v4, v7}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    move v4, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    .line 2313
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 2314
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    .line 2316
    instance-of v4, v1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-nez v4, :cond_5

    .line 2317
    const-string v4, "msg.bad.assign.left"

    sub-int v7, v2, v3

    invoke-virtual {p0, v4, v3, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 2318
    :cond_5
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    move v4, v2

    move-object v2, v6

    .line 2333
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v8

    .line 2335
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v9

    const/16 v10, 0x63

    .line 2338
    invoke-direct {p0, v10, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2339
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2340
    invoke-static {v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    .line 2343
    :cond_6
    new-instance v10, Lorg/mozilla/javascript/ast/VariableInitializer;

    sub-int v11, v4, v3

    invoke-direct {v10, v3, v11}, Lorg/mozilla/javascript/ast/VariableInitializer;-><init>(II)V

    if-eqz v1, :cond_8

    if-nez v6, :cond_7

    .line 2345
    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    if-nez v2, :cond_7

    .line 2346
    const-string v2, "msg.destruct.assign.no.init"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2348
    :cond_7
    invoke-virtual {v10, v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_2

    .line 2350
    :cond_8
    invoke-virtual {v10, v2}, Lorg/mozilla/javascript/ast/VariableInitializer;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2352
    :goto_2
    invoke-virtual {v10, v6}, Lorg/mozilla/javascript/ast/VariableInitializer;->setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2353
    invoke-virtual {v10, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 2354
    invoke-virtual {v10, v9}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 2355
    invoke-virtual {v10, v7, v8}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 2356
    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addVariable(Lorg/mozilla/javascript/ast/VariableInitializer;)V

    const/16 v1, 0x62

    .line 2358
    invoke-direct {p0, v1, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    sub-int/2addr v4, p2

    .line 2360
    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 2361
    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setIsStatement(Z)V

    return-object v0
.end method

.method private warnMissingSemi(II)V
    .locals 10

    .line 4277
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 4278
    new-array v0, v0, [I

    .line 4279
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1, p2, v0}, Lorg/mozilla/javascript/TokenStream;->getLine(I[I)Ljava/lang/String;

    move-result-object v8

    .line 4283
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget v1, v0, v2

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    move v5, p1

    if-eqz v8, :cond_1

    sub-int v6, p2, v5

    const/4 p1, 0x0

    .line 4285
    aget v7, v0, p1

    aget v9, v0, v2

    const-string v3, "msg.missing.semi"

    const-string v4, ""

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    return-void

    :cond_1
    move-object v2, p0

    .line 4288
    const-string p1, ""

    sub-int/2addr p2, v5

    const-string v0, "msg.missing.semi"

    invoke-virtual {p0, v0, p1, v5, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_2
    move-object v2, p0

    return-void
.end method

.method private warnTrailingComma(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    .line 4294
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getWarnTrailingComma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4296
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 4297
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    .line 4299
    :cond_0
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4300
    const-string p2, "msg.extra.trailing.comma"

    sub-int/2addr p3, p1

    invoke-virtual {p0, p2, p1, p3}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private whileLoop()Lorg/mozilla/javascript/ast/WhileLoop;
    .locals 4

    .line 1561
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1562
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1563
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1564
    new-instance v1, Lorg/mozilla/javascript/ast/WhileLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/WhileLoop;-><init>(I)V

    .line 1565
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 1566
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V

    .line 1568
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    .line 1569
    iget-object v3, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/WhileLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1570
    iget v3, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v3, v0

    iget v2, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    .line 1571
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 1572
    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 1573
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->restoreRelativeLoopPosition(Lorg/mozilla/javascript/ast/Loop;)V

    .line 1574
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    .line 1577
    throw v0
.end method

.method private withStatement()Lorg/mozilla/javascript/ast/WithStatement;
    .locals 10

    .line 2026
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2027
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2029
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v0

    .line 2031
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v4, 0x60

    .line 2032
    const-string v5, "msg.no.paren.with"

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    const/4 v7, 0x0

    .line 2034
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    const/16 v8, 0x61

    .line 2036
    const-string v9, "msg.no.paren.after.with"

    invoke-direct {p0, v8, v9, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2038
    :cond_2
    new-instance v6, Lorg/mozilla/javascript/ast/WithStatement;

    invoke-direct {v6, v3}, Lorg/mozilla/javascript/ast/WithStatement;-><init>(I)V

    .line 2039
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    .line 2040
    invoke-static {v8}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v6, v9}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 2041
    invoke-virtual {v6, v0}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    .line 2042
    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/ast/WithStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2043
    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/ast/WithStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2044
    invoke-virtual {v6, v4, v5}, Lorg/mozilla/javascript/ast/WithStatement;->setParens(II)V

    .line 2045
    invoke-virtual {v6, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v6
.end method

.method private xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;
    .locals 9

    .line 3301
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    .line 3302
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 3303
    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    .line 3304
    const-string v5, "msg.no.bracket.index"

    const/4 v6, 0x1

    const/16 v7, 0x5d

    invoke-direct {p0, v7, v5, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3305
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3306
    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v8, v4

    move v4, v1

    move v1, v8

    .line 3308
    :cond_1
    new-instance v5, Lorg/mozilla/javascript/ast/XmlElemRef;

    sub-int/2addr v4, v2

    invoke-direct {v5, v2, v4}, Lorg/mozilla/javascript/ast/XmlElemRef;-><init>(II)V

    .line 3309
    invoke-virtual {v5, p2}, Lorg/mozilla/javascript/ast/XmlRef;->setNamespace(Lorg/mozilla/javascript/ast/Name;)V

    .line 3310
    invoke-virtual {v5, p3}, Lorg/mozilla/javascript/ast/XmlRef;->setColonPos(I)V

    .line 3311
    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/XmlRef;->setAtPos(I)V

    .line 3312
    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/XmlElemRef;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3313
    invoke-virtual {v5, v0, v1}, Lorg/mozilla/javascript/ast/XmlElemRef;->setBrackets(II)V

    return-object v5
.end method

.method private xmlInitializer()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    .line 2841
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2842
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getFirstXMLToken()I

    move-result v0

    const/16 v2, 0xa2

    const/16 v3, 0x9f

    .line 2843
    const-string v4, "msg.syntax"

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 2844
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2845
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    .line 2848
    :cond_1
    new-instance v5, Lorg/mozilla/javascript/ast/XmlLiteral;

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/ast/XmlLiteral;-><init>(I)V

    .line 2849
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    :goto_0
    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 2873
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2874
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    .line 2869
    :cond_2
    new-instance v0, Lorg/mozilla/javascript/ast/XmlString;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/ast/XmlString;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    return-object v5

    .line 2854
    :cond_3
    new-instance v0, Lorg/mozilla/javascript/ast/XmlString;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lorg/mozilla/javascript/ast/XmlString;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    const/16 v0, 0x5e

    const/4 v1, 0x1

    .line 2855
    invoke-direct {p0, v0, v4, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 2856
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2858
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_4

    .line 2859
    new-instance v6, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v8, v0

    invoke-direct {v6, v0, v8}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 2860
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->expr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2861
    :goto_1
    invoke-direct {p0, v7, v4, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    .line 2862
    new-instance v1, Lorg/mozilla/javascript/ast/XmlExpression;

    invoke-direct {v1, v0, v6}, Lorg/mozilla/javascript/ast/XmlExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;)V

    .line 2863
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->isXMLAttribute()Z

    move-result v6

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/XmlExpression;->setIsXmlAttribute(Z)V

    .line 2864
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 2865
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    .line 2851
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method addError(Ljava/lang/String;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v0}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getPosition()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;II)V

    return-void
.end method

.method addError(Ljava/lang/String;I)V
    .locals 0

    int-to-char p2, p2

    .line 237
    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    .line 238
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addError(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v0}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getPosition()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLength()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 242
    iget v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    .line 243
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_0

    .line 245
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v2, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 250
    invoke-interface {p1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLineno()I

    move-result v4

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 251
    invoke-interface {p1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLine()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 252
    invoke-interface {p1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getOffset()I

    move-result v6

    .line 247
    invoke-interface/range {v1 .. v6}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v0}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getPosition()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLength()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method addWarning(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v0}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getPosition()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLength()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addWarning(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 209
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->reportWarningAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 212
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_1

    .line 213
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v1, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 218
    invoke-interface {p1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLineno()I

    move-result v3

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 219
    invoke-interface {p1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLine()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 220
    invoke-interface {p1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getOffset()I

    move-result v5

    .line 215
    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method protected checkActivationName(Ljava/lang/String;I)V
    .locals 2

    .line 4171
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4175
    :cond_0
    const-string v0, "arguments"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 4178
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4181
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getActivationNames()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 4182
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getActivationNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4184
    :cond_2
    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x21

    if-ne p2, p1, :cond_3

    .line 4185
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    const/16 p2, 0x78

    if-ne p1, p2, :cond_3

    .line 4191
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected checkMutableReference(Lorg/mozilla/javascript/Node;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 4792
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 4794
    const-string p1, "msg.bad.assign.left"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 4374
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4378
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;
    .locals 8

    .line 4364
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 4366
    invoke-virtual/range {v1 .. v7}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 4368
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 4369
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object p1
.end method

.method protected createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 4681
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 4682
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    if-eqz p3, :cond_0

    .line 4683
    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_0
    return-object p2
.end method

.method protected createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 1

    const/16 v0, 0x2c

    .line 4676
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    .line 4677
    invoke-static {v0, p1}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method protected createNumber(D)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 4688
    invoke-static {p1, p2}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method createPerFunctionVariables(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Parser$PerFunctionVariables;
    .locals 1

    .line 4349
    new-instance v0, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    return-object v0
.end method

.method protected createScopeNode(III)Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    .line 4700
    new-instance v0, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    .line 4701
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 4702
    invoke-virtual {v0, p2, p3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v0
.end method

.method defineSymbol(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2406
    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    return-void
.end method

.method defineSymbol(ILjava/lang/String;Z)V
    .locals 9

    if-nez p2, :cond_1

    .line 2411
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2414
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2416
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2417
    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 2418
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Symbol;->getDeclType()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x7a

    .line 2419
    const-string v4, "msg.var.redecl"

    const/16 v5, 0x87

    const/16 v6, 0xa7

    const/16 v7, 0xa8

    if-eqz v1, :cond_9

    if-eq v2, v7, :cond_4

    if-eq p1, v7, :cond_4

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v0, v8, :cond_9

    if-ne v2, v6, :cond_9

    :cond_4
    if-ne v2, v7, :cond_5

    .line 2425
    const-string v4, "msg.const.redecl"

    goto :goto_2

    :cond_5
    if-ne v2, v6, :cond_6

    .line 2427
    const-string v4, "msg.let.redecl"

    goto :goto_2

    :cond_6
    if-ne v2, v5, :cond_7

    goto :goto_2

    :cond_7
    if-ne v2, v3, :cond_8

    .line 2431
    const-string v4, "msg.fn.redecl"

    goto :goto_2

    .line 2432
    :cond_8
    const-string v4, "msg.parm.redecl"

    .line 2423
    :goto_2
    invoke-virtual {p0, v4, p2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const/16 v0, 0x60

    if-eq p1, v0, :cond_12

    if-eq p1, v3, :cond_e

    if-eq p1, v5, :cond_e

    if-eq p1, v6, :cond_b

    if-ne p1, v7, :cond_a

    goto :goto_3

    .line 2469
    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_b
    if-nez p3, :cond_d

    .line 2438
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 2439
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p3

    const/16 v0, 0x7d

    if-eq p3, v0, :cond_c

    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    instance-of p3, p3, Lorg/mozilla/javascript/ast/Loop;

    if-eqz p3, :cond_d

    .line 2440
    :cond_c
    const-string p1, "msg.let.decl.not.in.block"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return-void

    .line 2443
    :cond_d
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    return-void

    :cond_e
    :goto_3
    if-eqz v1, :cond_11

    if-ne v2, v5, :cond_f

    .line 2450
    invoke-virtual {p0, v4, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    if-ne v2, v0, :cond_10

    .line 2452
    const-string p1, "msg.var.hides.arg"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_4
    return-void

    .line 2455
    :cond_11
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    return-void

    :cond_12
    if-eqz v1, :cond_13

    .line 2463
    const-string p3, "msg.dup.parms"

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    :cond_13
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    return-void
.end method

.method destructuringArray(Lorg/mozilla/javascript/ast/ArrayLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ast/ArrayLiteral;",
            "I",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mozilla/javascript/ast/AstNode;",
            "Lorg/mozilla/javascript/Parser$Transformer;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v6, p2

    const/16 v1, 0xa8

    if-ne v6, v1, :cond_0

    const/16 v1, 0xa9

    const/16 v4, 0xa9

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    const/16 v4, 0x8

    .line 4451
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/mozilla/javascript/ast/AstNode;

    .line 4452
    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x8d

    if-ne v2, v3, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 4456
    :cond_1
    new-instance v13, Lorg/mozilla/javascript/Node;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    int-to-double v14, v11

    invoke-virtual {v0, v14, v15}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/16 v5, 0x27

    invoke-direct {v13, v5, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    if-eqz p6, :cond_2

    if-nez v7, :cond_2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    .line 4459
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/Parser;->setupDefaultValues(Ljava/lang/String;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ILorg/mozilla/javascript/Parser$Transformer;)V

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v2, p4

    move v14, v7

    .line 4463
    :goto_2
    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_4

    .line 4465
    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    .line 4466
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x36

    const/4 v7, 0x0

    .line 4467
    invoke-virtual {v0, v5, v1, v7}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-direct {v3, v4, v5, v13}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4466
    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v3, -0x1

    if-eq v6, v3, :cond_3

    .line 4469
    invoke-virtual {v0, v6, v1, v10}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    move-object/from16 v3, p5

    .line 4470
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object/from16 v3, p5

    :goto_3
    move-object v7, v2

    move v13, v4

    goto :goto_4

    :cond_4
    move-object/from16 v3, p5

    .line 4472
    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v5, 0x63

    if-ne v1, v5, :cond_5

    .line 4474
    check-cast v12, Lorg/mozilla/javascript/ast/Assignment;

    move-object/from16 v7, p7

    move v1, v6

    move-object v5, v13

    move v6, v4

    move-object v4, v12

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/Parser;->processDestructuringDefaults(ILorg/mozilla/javascript/Node;Ljava/util/List;Lorg/mozilla/javascript/ast/Assignment;Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Parser$Transformer;)V

    move-object v7, v2

    move v13, v6

    goto :goto_4

    :cond_5
    move-object v7, v2

    move-object v3, v13

    move v13, v4

    .line 4483
    iget-object v1, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 4488
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v1, p2

    move-object/from16 v6, p7

    move-object v2, v12

    .line 4484
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 4483
    invoke-virtual {v7, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v6, p2

    move v4, v13

    move v7, v14

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    return v1
.end method

.method destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;
    .locals 10

    .line 4388
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v1

    const/16 v2, 0xac

    invoke-virtual {p0, v2, v0, v1}, Lorg/mozilla/javascript/Parser;->createScopeNode(III)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 4389
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x2c

    invoke-virtual {p0, v2, p4, p3}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    const/16 v2, 0xa7

    invoke-direct {v1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 4391
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/4 p3, 0x1

    .line 4392
    invoke-virtual {p0, v2, p4, p3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4394
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 4396
    new-instance v5, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x62

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 4397
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 4398
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4400
    instance-of v1, p2, Lorg/mozilla/javascript/ast/ArrayLiteral;

    if-eqz v1, :cond_0

    .line 4401
    move-object v2, p2

    check-cast v2, Lorg/mozilla/javascript/ast/ArrayLiteral;

    move-object v1, p0

    move v3, p1

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 4402
    invoke-virtual/range {v1 .. v8}, Lorg/mozilla/javascript/Parser;->destructuringArray(Lorg/mozilla/javascript/ast/ArrayLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Z

    move-result p3

    goto :goto_2

    .line 4410
    :cond_0
    instance-of v1, p2, Lorg/mozilla/javascript/ast/ObjectLiteral;

    if-eqz v1, :cond_1

    .line 4411
    move-object v2, p2

    check-cast v2, Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-object v1, p0

    move v3, p1

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 4412
    invoke-virtual/range {v1 .. v8}, Lorg/mozilla/javascript/Parser;->destructuringObject(Lorg/mozilla/javascript/ast/ObjectLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Z

    move-result p3

    goto :goto_2

    .line 4420
    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    const/16 v8, 0x21

    const-string v9, "msg.bad.assign.left"

    if-eq v7, v8, :cond_3

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_2

    goto :goto_0

    .line 4429
    :cond_2
    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_0
    const/16 v7, 0x87

    if-eq p1, v7, :cond_4

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa8

    if-eq p1, v2, :cond_4

    goto :goto_1

    .line 4425
    :cond_4
    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 4427
    :goto_1
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    move-object/from16 v8, p6

    invoke-virtual {p0, p2, p1, v8}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_2
    if-eqz p3, :cond_5

    const-wide/16 p1, 0x0

    .line 4433
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_5
    const/16 p1, 0x16

    .line 4435
    invoke-virtual {v0, p1, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 4394
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 4395
    throw p1
.end method

.method destructuringObject(Lorg/mozilla/javascript/ast/ObjectLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ast/ObjectLiteral;",
            "I",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mozilla/javascript/ast/AstNode;",
            "Lorg/mozilla/javascript/Parser$Transformer;",
            ")Z"
        }
    .end annotation

    move/from16 v1, p2

    move-object/from16 v3, p3

    const/16 v0, 0xa8

    if-ne v1, v0, :cond_0

    const/16 v0, 0xa9

    const/16 v6, 0xa9

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/16 v6, 0x8

    .line 4608
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x1

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/ObjectProperty;

    .line 4613
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz v2, :cond_1

    .line 4614
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->lineNumber()I

    move-result v2

    .line 4615
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->columnNumber()I

    move-result v4

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4617
    :goto_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    .line 4620
    instance-of v7, v5, Lorg/mozilla/javascript/ast/Name;

    const/16 v12, 0x21

    if-eqz v7, :cond_2

    .line 4621
    check-cast v5, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 4622
    new-instance v7, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v13

    invoke-direct {v7, v12, v13, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_3
    move-object v12, v7

    goto :goto_4

    .line 4623
    :cond_2
    instance-of v7, v5, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v7, :cond_3

    .line 4624
    check-cast v5, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 4625
    new-instance v7, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v13

    invoke-direct {v7, v12, v13, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    .line 4626
    :cond_3
    instance-of v7, v5, Lorg/mozilla/javascript/ast/NumberLiteral;

    if-eqz v7, :cond_8

    .line 4627
    check-cast v5, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v12

    double-to-int v5, v12

    int-to-double v12, v5

    invoke-virtual {p0, v12, v13}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 4628
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v12, 0x27

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v13

    invoke-direct {v7, v12, v13, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    .line 4636
    :goto_4
    invoke-virtual {v12, v2, v4}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    if-eqz p6, :cond_4

    if-nez v11, :cond_4

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v7, p7

    .line 4638
    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/Parser;->setupDefaultValues(Ljava/lang/String;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ILorg/mozilla/javascript/Parser$Transformer;)V

    const/4 v11, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v4, p4

    .line 4642
    :goto_5
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 4643
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_6

    .line 4644
    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 4645
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x36

    const/4 v7, 0x0

    .line 4646
    invoke-virtual {p0, v5, v0, v7}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-direct {v3, v6, v5, v12}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4645
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 4648
    invoke-virtual {p0, v1, v0, v10}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    move-object/from16 v3, p5

    .line 4649
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    move-object/from16 v3, p5

    :goto_6
    move-object v7, v4

    :goto_7
    move v12, v6

    goto :goto_8

    :cond_6
    move-object/from16 v3, p5

    .line 4651
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v7, 0x63

    if-ne v5, v7, :cond_7

    .line 4652
    check-cast v0, Lorg/mozilla/javascript/ast/Assignment;

    move-object/from16 v7, p7

    move-object v2, v4

    move-object v5, v12

    move-object v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/Parser;->processDestructuringDefaults(ILorg/mozilla/javascript/Node;Ljava/util/List;Lorg/mozilla/javascript/ast/Assignment;Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Parser$Transformer;)V

    move-object v7, v2

    goto :goto_7

    :cond_7
    move-object v7, v4

    move-object v3, v12

    move v12, v6

    .line 4661
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 4666
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v1, p2

    move-object/from16 v6, p7

    move-object v2, v0

    move-object v0, p0

    .line 4662
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 4661
    invoke-virtual {v7, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_8
    move/from16 v1, p2

    move-object/from16 v3, p3

    move v6, v12

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 4629
    :cond_8
    instance-of v0, v5, Lorg/mozilla/javascript/ast/ComputedPropertyKey;

    if-eqz v0, :cond_9

    .line 4630
    const-string v0, "msg.bad.computed.property.in.destruct"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v9

    .line 4633
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_a
    return v0
.end method

.method public eof()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->eof()Z

    move-result v0

    return v0
.end method

.method public inUseStrictDirective()Z
    .locals 1

    .line 4830
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    return v0
.end method

.method insideFunctionBody()Z
    .locals 1

    .line 486
    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method insideFunctionParams()Z
    .locals 1

    .line 490
    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunctionParams:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method lookupMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 310
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 311
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    .line 4807
    instance-of v0, p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-eqz v0, :cond_0

    .line 4808
    check-cast p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/ast/DestructuringForm;->setIsDestructuring(Z)V

    return-void

    .line 4809
    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_1

    .line 4810
    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_1
    return-void
.end method

.method public parse(Ljava/io/Reader;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 582
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 587
    :try_start_0
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    .line 588
    new-instance p2, Lorg/mozilla/javascript/TokenStream;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1, p3}, Lorg/mozilla/javascript/TokenStream;-><init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 589
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parse()Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    .line 592
    throw p1

    .line 582
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parser reused"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    .locals 1

    .line 557
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    if-nez v0, :cond_1

    .line 558
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    .line 559
    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p2}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 560
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    .line 562
    :cond_0
    new-instance p2, Lorg/mozilla/javascript/TokenStream;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1, p3}, Lorg/mozilla/javascript/TokenStream;-><init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    const/4 p1, 0x1

    .line 564
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parse()Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 567
    :catch_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    :goto_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    .line 570
    throw p2

    .line 557
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parser reused"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method popScope()V
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-void
.end method

.method pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 2

    .line 494
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Scope;->addChildScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 502
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-void
.end method

.method protected removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 4800
    :goto_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_0

    .line 4801
    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method reportError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method reportError(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v0}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getPosition()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    invoke-interface {v1}, Lorg/mozilla/javascript/Parser$CurrentPositionReporter;->getLength()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method reportError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 327
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    .line 329
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 330
    :cond_0
    new-instance p1, Lorg/mozilla/javascript/Parser$ParserException;

    invoke-direct {p1}, Lorg/mozilla/javascript/Parser$ParserException;-><init>()V

    throw p1
.end method

.method public reportErrorsIfExists(I)V
    .locals 8

    .line 4834
    iget v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    if-eqz v0, :cond_1

    .line 4835
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4836
    const-string v1, "msg.got.syntax.errors"

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4837
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4838
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-interface/range {v2 .. v7}, Lorg/mozilla/javascript/ErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultUseStrictDirective(Z)V
    .locals 0

    .line 4826
    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->defaultUseStrictDirective:Z

    return-void
.end method

.method protected setIsGenerator()V
    .locals 1

    .line 4209
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4210
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsGenerator()V

    :cond_0
    return-void
.end method

.method protected setRequiresActivation()V
    .locals 1

    .line 4196
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunctionBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4197
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    :cond_0
    return-void
.end method

.method public setSourceURI(Ljava/lang/String;)V
    .locals 0

    .line 4843
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    return-void
.end method

.method protected simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1

    const/4 v0, 0x0

    .line 4728
    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method protected simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 4732
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v2, 0x27

    if-eq v0, v2, :cond_4

    const/16 p3, 0x2c

    if-eq v0, p3, :cond_1

    const/16 p3, 0x49

    if-ne v0, p3, :cond_0

    .line 4782
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 4783
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->checkMutableReference(Lorg/mozilla/javascript/Node;)V

    .line 4784
    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x4a

    invoke-direct {p3, v0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p3

    .line 4788
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4735
    :cond_1
    move-object p3, p1

    check-cast p3, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    .line 4736
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v0, :cond_3

    const-string v0, "eval"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "arguments"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4737
    :cond_2
    const-string v0, "msg.bad.id.strict"

    invoke-virtual {p0, v0, p3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 p3, 0x36

    .line 4739
    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 4740
    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x8

    invoke-direct {p3, v0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p3

    .line 4750
    :cond_4
    instance-of v2, p1, Lorg/mozilla/javascript/ast/PropertyGet;

    if-eqz v2, :cond_6

    .line 4751
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz p3, :cond_5

    .line 4752
    invoke-interface {p3, v2}, Lorg/mozilla/javascript/Parser$Transformer;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 4753
    :cond_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    goto :goto_0

    .line 4754
    :cond_6
    instance-of v2, p1, Lorg/mozilla/javascript/ast/ElementGet;

    if-eqz v2, :cond_8

    .line 4755
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 4756
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    if-eqz p3, :cond_7

    .line 4757
    invoke-interface {p3, v2}, Lorg/mozilla/javascript/Parser$Transformer;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :cond_7
    if-eqz p3, :cond_9

    .line 4758
    invoke-interface {p3, p1}, Lorg/mozilla/javascript/Parser$Transformer;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    goto :goto_0

    .line 4761
    :cond_8
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 4762
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    :cond_9
    :goto_0
    if-ne v0, v1, :cond_a

    const/16 p3, 0x2e

    .line 4774
    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    const/16 p3, 0x25

    goto :goto_1

    :cond_a
    const/16 p3, 0x29

    .line 4778
    :goto_1
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p3, v2, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method
