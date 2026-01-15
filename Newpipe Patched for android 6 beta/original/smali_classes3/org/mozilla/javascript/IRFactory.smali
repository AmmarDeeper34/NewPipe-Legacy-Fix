.class public final Lorg/mozilla/javascript/IRFactory;
.super Ljava/lang/Object;
.source "IRFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/IRFactory$AstNodePosition;
    }
.end annotation


# static fields
.field private static final ALWAYS_FALSE_BOOLEAN:I = -0x1

.field private static final ALWAYS_TRUE_BOOLEAN:I = 0x1

.field private static final LOOP_DO_WHILE:I = 0x0

.field private static final LOOP_FOR:I = 0x2

.field private static final LOOP_WHILE:I = 0x1


# instance fields
.field private astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

.field private parser:Lorg/mozilla/javascript/Parser;


# direct methods
.method public static synthetic $r8$lambda$I3DAIEFXXfV3SR8-ibZ5Po7sRG0(Lorg/mozilla/javascript/IRFactory;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/ErrorReporter;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lorg/mozilla/javascript/Parser;

    invoke-direct {v0, p1, p4}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    .line 114
    new-instance p1, Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-direct {p1, p3}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    .line 115
    iget-object p3, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object p1, p3, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 116
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/Parser;->setSourceURI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/ErrorReporter;)V

    return-void
.end method

.method private static addSwitchCase(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4

    .line 1336
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x8f

    if-ne v0, v1, :cond_2

    .line 1337
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    .line 1338
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    .line 1340
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 1342
    new-instance v2, Lorg/mozilla/javascript/ast/Jump;

    const/16 v3, 0x80

    invoke-direct {v2, v3, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1343
    iput-object v1, v2, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1344
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 1346
    :cond_0
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->setDefault(Lorg/mozilla/javascript/Node;)V

    .line 1348
    :goto_0
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1349
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void

    .line 1338
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1336
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private arrayCompTransformHelper(Lorg/mozilla/javascript/ast/ArrayComprehension;Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 18

    move-object/from16 v1, p0

    .line 331
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v7

    .line 332
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getResult()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 334
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getLoops()Ljava/util/List;

    move-result-object v10

    .line 335
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 338
    new-array v11, v8, [Lorg/mozilla/javascript/Node;

    .line 339
    new-array v12, v8, [Lorg/mozilla/javascript/Node;

    const/4 v13, 0x0

    move-object v14, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_1

    .line 342
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    .line 343
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 344
    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 347
    :try_start_0
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    .line 348
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 351
    :cond_0
    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v5, v5, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v5

    .line 352
    iget-object v6, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v9, 0x60

    invoke-virtual {v6, v9, v5, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 353
    iget-object v6, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    .line 356
    invoke-virtual {v6, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    const/16 v9, 0x63

    invoke-direct {v1, v9, v4, v6}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    const/16 v6, 0x62

    .line 354
    invoke-static {v6, v4, v14}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    move-object v14, v4

    move-object v4, v5

    .line 359
    :goto_1
    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 362
    iget-object v6, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v9, 0xa7

    invoke-virtual {v6, v9, v4, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 363
    aput-object v5, v11, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    iget-object v4, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v4}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 368
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    aput-object v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :goto_2
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 366
    throw v0

    .line 372
    :cond_1
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v3, p2

    .line 376
    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v9, p1

    iget v6, v9, Lorg/mozilla/javascript/Node;->type:I

    const/4 v3, 0x0

    .line 375
    const-string v4, "push"

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;II)Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/16 v3, 0x2b

    .line 373
    invoke-direct {v1, v3, v2}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    .line 378
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x93

    invoke-direct {v2, v3, v15}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 379
    invoke-virtual {v2, v0, v7}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 381
    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 382
    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-static {v3, v2, v4, v0, v7}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :cond_2
    add-int/lit8 v8, v8, -0x1

    move-object v6, v2

    move v0, v8

    const/4 v2, 0x0

    :goto_3
    if-ltz v0, :cond_4

    .line 389
    :try_start_1
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    .line 393
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    .line 394
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v5

    .line 391
    invoke-direct {v1, v4, v3, v5}, Lorg/mozilla/javascript/IRFactory;->createLoopNode(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v3

    .line 395
    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v16, v2, 0x1

    move-object v2, v4

    .line 397
    :try_start_2
    aget-object v4, v11, v0

    aget-object v5, v12, v0

    .line 405
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v8

    .line 406
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v9

    move-object/from16 v17, v2

    const/16 v2, 0xa7

    .line 398
    invoke-direct/range {v1 .. v9}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v2, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    if-ge v13, v2, :cond_3

    .line 410
    iget-object v3, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 412
    :cond_3
    throw v0

    :cond_4
    :goto_5
    if-ge v13, v2, :cond_5

    .line 410
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 416
    :cond_5
    invoke-virtual {v15, v14}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v6
.end method

.method private static closeSwitch(Lorg/mozilla/javascript/Node;)V
    .locals 4

    .line 1353
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x8f

    if-ne v0, v1, :cond_2

    .line 1354
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    .line 1355
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    .line 1357
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1360
    iput-object v1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1362
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getDefault()Lorg/mozilla/javascript/Node;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    const/4 v3, 0x5

    .line 1367
    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1368
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void

    .line 1355
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1353
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 5

    .line 2198
    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2200
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2207
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string p2, "msg.bad.assign.left"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object p3

    :cond_1
    :goto_0
    const/16 v0, 0x63

    if-eq p1, v0, :cond_2

    .line 2202
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string p2, "msg.bad.destruct.op"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object p3

    .line 2205
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    new-instance v0, Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/IRFactory;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, p2, p3, v0}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 2264
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/16 p1, 0xb9

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x51

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x19

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x18

    goto :goto_1

    :pswitch_4
    const/16 p1, 0x17

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x16

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x15

    goto :goto_1

    :pswitch_7
    const/16 p1, 0x14

    goto :goto_1

    :pswitch_8
    const/16 p1, 0x13

    goto :goto_1

    :pswitch_9
    const/16 p1, 0x12

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x76

    goto :goto_1

    :pswitch_b
    const/16 p1, 0xb

    goto :goto_1

    :pswitch_c
    const/16 p1, 0xa

    goto :goto_1

    :pswitch_d
    const/16 p1, 0x75

    goto :goto_1

    :pswitch_e
    const/16 p1, 0x9

    .line 2267
    :goto_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p2

    const/16 v1, 0x98

    const/16 v2, 0x21

    if-eq p2, v2, :cond_6

    const/16 v3, 0x27

    if-eq p2, v3, :cond_6

    const/16 v2, 0x2c

    if-eq p2, v2, :cond_5

    const/16 v2, 0x49

    if-ne p2, v2, :cond_4

    .line 2289
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 2290
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/Parser;->checkMutableReference(Lorg/mozilla/javascript/Node;)V

    .line 2291
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 2292
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2293
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x9c

    invoke-direct {p1, p3, p2, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;->propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 2297
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2271
    :cond_5
    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, p1, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 p1, 0x36

    .line 2272
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 2273
    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x8

    invoke-direct {p3, v1, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p3, v0}, Lorg/mozilla/javascript/IRFactory;->propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 2278
    :cond_6
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 2279
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-ne p2, v2, :cond_7

    const/16 p2, 0x99

    goto :goto_2

    :cond_7
    const/16 p2, 0x9a

    .line 2283
    :goto_2
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 2284
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2285
    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p2, v3, v4, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;->propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 2216
    :pswitch_f
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v0, p3}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;->propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 7

    const/16 v0, 0x75

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p0, v0, :cond_a

    const/16 v0, 0x76

    if-eq p0, v0, :cond_8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v2, 0x1c

    const/16 v3, 0x2d

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    .line 2145
    :pswitch_0
    iget v4, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_c

    .line 2146
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v4

    .line 2147
    iget v6, p1, Lorg/mozilla/javascript/Node;->type:I

    if-ne v6, v3, :cond_0

    .line 2149
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_0
    cmpl-double v3, v4, v0

    if-nez v3, :cond_c

    .line 2154
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    .line 2123
    :pswitch_1
    iget v4, p1, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_2

    .line 2124
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v4

    .line 2125
    iget v6, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v6, v3, :cond_1

    .line 2127
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    mul-double v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_1
    cmpl-double v3, v4, v0

    if-nez v3, :cond_c

    .line 2131
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    .line 2133
    :cond_2
    iget v4, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_c

    .line 2134
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v3

    cmpl-double v5, v3, v0

    if-nez v5, :cond_c

    .line 2137
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    .line 2102
    :pswitch_2
    iget v0, p1, Lorg/mozilla/javascript/Node;->type:I

    const-wide/16 v4, 0x0

    if-ne v0, v3, :cond_4

    .line 2103
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    .line 2104
    iget v2, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v2, v3, :cond_3

    .line 2106
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_3
    cmpl-double v2, v0, v4

    if-nez v2, :cond_c

    .line 2110
    new-instance p0, Lorg/mozilla/javascript/Node;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    .line 2112
    :cond_4
    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v3, :cond_c

    .line 2113
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_c

    .line 2116
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    .line 2071
    :pswitch_3
    iget v0, p1, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0xa

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_6

    .line 2073
    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v2, :cond_5

    .line 2074
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_c

    .line 2076
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    .line 2080
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p2

    .line 2081
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->setString(Ljava/lang/String;)V

    return-object p1

    :cond_6
    if-ne v0, v3, :cond_c

    .line 2084
    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v3, :cond_7

    .line 2085
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_7
    if-ne v0, v2, :cond_c

    .line 2089
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide p0

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    .line 2090
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    .line 2091
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/Node;->setString(Ljava/lang/String;)V

    return-object p2

    .line 2165
    :cond_8
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    if-ne v0, v2, :cond_9

    goto :goto_1

    :cond_9
    if-ne v0, v1, :cond_c

    goto :goto_2

    .line 2182
    :cond_a
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    if-ne v0, v1, :cond_b

    :goto_1
    return-object p1

    :cond_b
    if-ne v0, v2, :cond_c

    :goto_2
    return-object p2

    .line 2194
    :cond_c
    :goto_3
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 5

    .line 1924
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    const-string v3, "eval"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 1925
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1926
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1928
    :cond_0
    const-string v1, "With"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1931
    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 1932
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1933
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1937
    :goto_0
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    if-eqz v2, :cond_3

    .line 1940
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    const/16 p1, 0xa

    .line 1941
    invoke-virtual {v0, p1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_3
    return-object v0
.end method

.method private createCatch(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 8

    const/16 v0, 0x8d

    if-nez p1, :cond_0

    .line 1391
    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :cond_0
    move-object v3, p1

    if-nez p2, :cond_1

    .line 1394
    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :cond_1
    move-object v4, p2

    .line 1396
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x89

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    return-object v1
.end method

.method private static createCondExpr(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1841
    invoke-static {p0}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p2

    .line 1847
    :cond_1
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x73

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private createElementGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 0

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    if-eqz p1, :cond_0

    .line 2032
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p4, 0x27

    invoke-direct {p2, p4, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p2

    .line 2031
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2034
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IRFactory;->createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private static createExprStatementNoReturn(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1372
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x93

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    return-object v0
.end method

.method private static createFor(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 8

    .line 1458
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    .line 1462
    invoke-static {p0}, Lorg/mozilla/javascript/ast/Scope;->splitScope(Lorg/mozilla/javascript/ast/Scope;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 1463
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 1464
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1465
    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 p1, 0x8d

    invoke-direct {v6, p1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v3, 0x2

    move-object v2, p0

    move-object v5, p2

    move-object v7, p3

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_0
    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    move-object v3, p4

    const/4 v2, 0x2

    move-object v5, p1

    .line 1468
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method private createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ZZ)Lorg/mozilla/javascript/Node;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 1531
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1536
    :try_start_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 1537
    const-string v4, "msg.bad.for.in.lhs"

    const/16 v5, 0x47

    const/16 v6, 0xa7

    const/16 v7, 0x87

    const/16 v8, 0x48

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v2, v7, :cond_5

    if-ne v2, v6, :cond_0

    goto :goto_3

    :cond_0
    if-eq v2, v5, :cond_3

    if-ne v2, v8, :cond_1

    goto :goto_2

    .line 1559
    :cond_1
    :try_start_1
    invoke-static {v0}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1561
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    :goto_0
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    return-object v3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    move v12, v2

    :goto_1
    const/4 v2, -0x1

    goto :goto_5

    .line 1556
    :cond_3
    :goto_2
    :try_start_2
    instance-of v3, v0, Lorg/mozilla/javascript/ast/ArrayLiteral;

    if-eqz v3, :cond_4

    .line 1557
    move-object v3, v0

    check-cast v3, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v9

    :cond_4
    move-object v5, v0

    move v12, v2

    goto :goto_5

    .line 1538
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v11

    .line 1539
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    if-eq v12, v5, :cond_8

    if-ne v12, v8, :cond_6

    goto :goto_4

    :cond_6
    const/16 v5, 0x2c

    if-ne v12, v5, :cond_7

    .line 1547
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    move v12, v2

    move-object v5, v3

    goto :goto_1

    .line 1549
    :cond_7
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 1544
    :cond_8
    :goto_4
    instance-of v2, v11, Lorg/mozilla/javascript/ast/ArrayLiteral;

    if-eqz v2, :cond_9

    .line 1545
    move-object v2, v11

    check-cast v2, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v9

    :cond_9
    move-object v5, v11

    move v2, v12

    .line 1566
    :goto_5
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x9b

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    if-eqz p7, :cond_a

    const/16 v4, 0x40

    goto :goto_6

    :cond_a
    if-eqz p8, :cond_b

    const/16 v4, 0x42

    goto :goto_6

    :cond_b
    if-eq v2, v10, :cond_c

    const/16 v4, 0x41

    goto :goto_6

    :cond_c
    const/16 v4, 0x3f

    .line 1575
    :goto_6
    new-instance v11, Lorg/mozilla/javascript/Node;

    move-object/from16 v13, p4

    invoke-direct {v11, v4, v13}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/4 v4, 0x3

    .line 1576
    invoke-virtual {v11, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1577
    new-instance v13, Lorg/mozilla/javascript/Node;

    const/16 v14, 0x43

    invoke-direct {v13, v14}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1578
    invoke-virtual {v13, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1579
    new-instance v14, Lorg/mozilla/javascript/Node;

    const/16 v15, 0x44

    invoke-direct {v14, v15}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1580
    invoke-virtual {v14, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1582
    new-instance v15, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x8f

    invoke-direct {v15, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    if-eq v2, v10, :cond_e

    .line 1585
    iget-object v4, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    new-instance v10, Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1}, Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/IRFactory;)V

    move/from16 v6, p1

    .line 1586
    invoke-virtual {v4, v6, v5, v14, v10}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-nez p7, :cond_f

    if-nez p8, :cond_f

    if-eq v2, v8, :cond_d

    const/4 v2, 0x2

    if-eq v9, v2, :cond_f

    .line 1592
    :cond_d
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string v5, "msg.bad.for.in.destruct"

    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_7

    .line 1595
    :cond_e
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v2, v5, v14}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1597
    :cond_f
    :goto_7
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x93

    invoke-direct {v2, v5, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v15, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v2, p5

    .line 1598
    invoke-virtual {v15, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1600
    move-object/from16 v2, p2

    check-cast v2, Lorg/mozilla/javascript/ast/Jump;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x1

    move-object/from16 v16, v13

    move-object v13, v2

    invoke-static/range {v13 .. v18}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1601
    invoke-virtual {v2, v11}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    if-eq v12, v7, :cond_10

    const/16 v4, 0xa7

    if-ne v12, v4, :cond_11

    .line 1602
    :cond_10
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 1603
    :cond_11
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1607
    :goto_8
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 1608
    throw v0
.end method

.method private static createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 1803
    invoke-static {p0}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x8f

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    return-object p2

    .line 1811
    :cond_1
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(III)V

    return-object p0

    .line 1814
    :cond_2
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v2, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(III)V

    .line 1815
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p3

    .line 1816
    new-instance p4, Lorg/mozilla/javascript/ast/Jump;

    const/4 v1, 0x7

    invoke-direct {p4, v1, p0}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1817
    iput-object p3, p4, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1819
    invoke-virtual {v0, p4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1820
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    if-eqz p2, :cond_3

    .line 1823
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p1

    const/4 p4, 0x5

    .line 1824
    invoke-static {p4, p1}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object p4

    invoke-virtual {v0, p4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1825
    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1826
    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1827
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 1829
    :cond_3
    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1832
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1833
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p0

    .line 1834
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    :cond_4
    return-object v0
.end method

.method private static createIncDec(IZLorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1947
    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 1948
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1968
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1956
    :cond_1
    :goto_0
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/16 p2, 0x78

    if-ne p0, p2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    or-int/lit8 p0, p0, 0x2

    :cond_3
    const/16 p1, 0xd

    .line 1964
    invoke-virtual {v0, p1, p0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return-object v0
.end method

.method private static createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 8

    .line 1473
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1474
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, 0x8d

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 1475
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1476
    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x32

    invoke-direct {p3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1478
    :cond_0
    new-instance v4, Lorg/mozilla/javascript/ast/Jump;

    const/4 v5, 0x6

    invoke-direct {v4, v5, p3}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1479
    iput-object v0, v4, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1480
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p3

    .line 1482
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1483
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_2

    .line 1486
    :cond_1
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v7

    invoke-direct {v5, v2, v6, v7}, Lorg/mozilla/javascript/Node;-><init>(III)V

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1488
    :cond_2
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1489
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1490
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1492
    iput-object p3, p0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    if-eq p1, v0, :cond_3

    if-ne p1, v3, :cond_6

    :cond_3
    const/4 p3, 0x5

    .line 1497
    invoke-static {p3, v1}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    if-ne p1, v3, :cond_6

    .line 1500
    invoke-virtual {p4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p3, 0x93

    if-eq p1, v2, :cond_5

    const/16 v0, 0x87

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_4

    .line 1503
    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object p4, p1

    .line 1505
    :cond_4
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 1507
    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1508
    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1509
    invoke-virtual {p5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-eq p1, v2, :cond_6

    .line 1510
    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p3, p5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1511
    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1517
    :cond_6
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/Jump;->setContinue(Lorg/mozilla/javascript/Node;)V

    return-object p0
.end method

.method private createLoopNode(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/ast/Scope;
    .locals 2

    .line 1450
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v1, 0x92

    invoke-virtual {v0, v1, p2, p3}, Lorg/mozilla/javascript/Parser;->createScopeNode(III)Lorg/mozilla/javascript/ast/Scope;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 1452
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/Jump;->setLoop(Lorg/mozilla/javascript/ast/Jump;)V

    :cond_0
    return-object p2
.end method

.method private createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 2

    if-eqz p2, :cond_1

    .line 2041
    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2042
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    goto :goto_0

    .line 2044
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_3

    if-nez p2, :cond_2

    .line 2050
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p2, 0x57

    invoke-direct {p1, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 2052
    :cond_2
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p2, 0x58

    invoke-direct {p1, p2, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    .line 2056
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x55

    invoke-direct {p2, v0, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    .line 2058
    :cond_4
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x56

    invoke-direct {p2, v1, p1, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :goto_2
    if-eqz p4, :cond_5

    const/16 p2, 0x10

    .line 2062
    invoke-virtual {p1, p2, p4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 2064
    :cond_5
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x49

    invoke-direct {p2, p3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p2
.end method

.method private createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;II)Lorg/mozilla/javascript/Node;
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_7

    if-nez p4, :cond_7

    if-nez p1, :cond_0

    .line 1975
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 1977
    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 p4, 0x21

    invoke-virtual {p2, p3, p4}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    .line 1978
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->isSpecialProperty(Ljava/lang/String;)Z

    move-result p2

    const/16 v1, 0xba

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    if-eqz p2, :cond_4

    .line 1979
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 1985
    instance-of p2, p1, Lorg/mozilla/javascript/ast/KeywordLiteral;

    if-eqz p2, :cond_1

    .line 1988
    check-cast p1, Lorg/mozilla/javascript/ast/KeywordLiteral;

    .line 1989
    new-instance p2, Lorg/mozilla/javascript/ast/KeywordLiteral;

    .line 1991
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    const/16 v4, 0x30

    invoke-direct {p2, p4, v2, v4}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    .line 1992
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {p2, p4, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    move-object p1, p2

    goto :goto_0

    .line 1986
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1995
    :cond_2
    :goto_0
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p4, 0x4d

    invoke-direct {p2, p4, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/16 p1, 0x11

    .line 1996
    invoke-virtual {p2, p1, p3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1997
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x49

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    if-ne p5, v1, :cond_3

    .line 1999
    invoke-virtual {p2, v3, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 2000
    invoke-virtual {p1, v3, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_3
    return-object p1

    .line 2005
    :cond_4
    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-static {p3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-direct {p2, p4, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    if-ne p5, v1, :cond_5

    .line 2007
    invoke-virtual {p2, v3, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 2009
    :cond_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-ne p1, v2, :cond_6

    const/16 p1, 0x1f

    .line 2010
    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_6
    return-object p2

    .line 2014
    :cond_7
    invoke-static {p3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    or-int/2addr p4, v0

    .line 2016
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IRFactory;->createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private static createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 1376
    invoke-static {p0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method private createTryCatchFinally(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/16 v2, 0x8f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1629
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v2, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1632
    :goto_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v2, :cond_2

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v5, :cond_2

    goto :goto_1

    .line 1636
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v2

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    :goto_1
    return-object v0

    .line 1644
    :cond_3
    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x9b

    invoke-direct {v6, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1645
    new-instance v8, Lorg/mozilla/javascript/ast/Jump;

    const/16 v9, 0x5a

    invoke-direct {v8, v9, v0}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    move/from16 v0, p4

    move/from16 v9, p5

    .line 1646
    invoke-virtual {v8, v0, v9}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    const/4 v0, 0x3

    .line 1647
    invoke-virtual {v8, v0, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    const/4 v9, 0x5

    if-eqz v2, :cond_7

    .line 1651
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1652
    invoke-static {v9, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1655
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 1656
    iput-object v10, v8, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1658
    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1708
    new-instance v10, Lorg/mozilla/javascript/Node;

    invoke-direct {v10, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1711
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    move-object v11, v7

    const/4 v7, 0x0

    :goto_2
    if-eqz v11, :cond_5

    .line 1715
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v12

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v13

    .line 1717
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v14

    .line 1718
    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v15

    const/16 v16, 0x1

    .line 1719
    invoke-virtual {v15}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1720
    invoke-virtual {v11, v14}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1721
    invoke-virtual {v11, v15}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1722
    invoke-virtual {v11, v4}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1728
    new-instance v9, Lorg/mozilla/javascript/Node;

    invoke-direct {v9, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v4, v9}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v9, 0x5

    .line 1729
    invoke-static {v9, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1733
    invoke-virtual {v15}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v9, 0x8d

    if-ne v0, v9, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 1737
    invoke-static {v15, v4, v0, v12, v13}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1742
    :goto_3
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v9, 0x3e

    invoke-static {v6}, Lorg/mozilla/javascript/IRFactory;->createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    invoke-direct {v0, v9, v14, v15}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/4 v9, 0x3

    .line 1743
    invoke-virtual {v0, v9, v10}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    const/16 v9, 0xe

    .line 1744
    invoke-virtual {v0, v9, v7}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1745
    invoke-virtual {v10, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1750
    invoke-static {v10}, Lorg/mozilla/javascript/IRFactory;->createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    move-object/from16 v9, p0

    .line 1749
    invoke-direct {v9, v0, v4, v12, v13}, Lorg/mozilla/javascript/IRFactory;->createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1748
    invoke-virtual {v10, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1756
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x3

    const/4 v9, 0x5

    goto :goto_2

    :cond_5
    move-object/from16 v9, p0

    .line 1759
    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    if-nez v3, :cond_6

    .line 1762
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x38

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v3, 0x3

    .line 1763
    invoke-virtual {v0, v3, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1764
    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1767
    :cond_6
    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_4

    :cond_7
    move-object/from16 v9, p0

    :goto_4
    if-eqz v5, :cond_8

    .line 1771
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1772
    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/ast/Jump;->setFinally(Lorg/mozilla/javascript/Node;)V

    const/16 v2, 0x95

    .line 1775
    invoke-static {v2, v0}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1778
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/4 v3, 0x5

    .line 1779
    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1781
    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1782
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x8a

    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/4 v3, 0x3

    .line 1783
    invoke-virtual {v0, v3, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1784
    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1786
    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1788
    :cond_8
    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v6
.end method

.method private static createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 5

    .line 1851
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2d

    const/16 v2, 0x2c

    const/4 v3, 0x1

    const/16 v4, 0x32

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    if-ne v0, v2, :cond_8

    const/16 p0, 0x97

    .line 1883
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-object p1

    :pswitch_2
    if-ne v0, v2, :cond_0

    const/16 v0, 0x36

    .line 1859
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 1860
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1861
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p0, p1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x49

    if-ne v0, v1, :cond_2

    .line 1869
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p0

    .line 1870
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1871
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x4b

    invoke-direct {v1, v0, p0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto :goto_1

    .line 1874
    :cond_2
    new-instance v1, Lorg/mozilla/javascript/Node;

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-direct {v1, p0, v0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    .line 1863
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1864
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1865
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1866
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1867
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, p0, v0, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v1, v2

    :goto_1
    const/4 p0, 0x0

    const/16 v0, 0x1f

    .line 1876
    invoke-virtual {p1, v0, p0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p0

    if-ne p0, v3, :cond_4

    .line 1877
    invoke-virtual {v1, v0, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_4
    return-object v1

    :pswitch_3
    if-ne v0, v1, :cond_8

    .line 1896
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :pswitch_4
    if-ne v0, v1, :cond_8

    .line 1889
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    not-int p0, p0

    int-to-double v0, p0

    .line 1890
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    .line 1902
    :pswitch_5
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v1

    if-eqz v1, :cond_8

    const/16 p0, 0x31

    if-ne v1, v3, :cond_5

    const/16 v1, 0x31

    goto :goto_2

    :cond_5
    const/16 v1, 0x32

    :goto_2
    if-eq v0, v4, :cond_7

    if-ne v0, p0, :cond_6

    goto :goto_3

    .line 1914
    :cond_6
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    return-object p0

    .line 1911
    :cond_7
    :goto_3
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-object p1

    .line 1919
    :cond_8
    :goto_4
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    const/16 v0, 0x9b

    .line 2308
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2309
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v1, 0x3

    .line 2310
    invoke-virtual {v0, v1, p0}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v0

    .line 2308
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 1793
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 1794
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x8f

    invoke-direct {v0, v1, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(III)V

    .line 1795
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1796
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x88

    invoke-direct {p1, v1, p2, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    .line 1797
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1798
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private genExprTransformHelper(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;
    .locals 16

    move-object/from16 v1, p0

    .line 756
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    .line 757
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getResult()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 759
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getLoops()Ljava/util/List;

    move-result-object v10

    .line 760
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 763
    new-array v11, v4, [Lorg/mozilla/javascript/Node;

    .line 764
    new-array v12, v4, [Lorg/mozilla/javascript/Node;

    const/4 v13, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 767
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    .line 769
    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    .line 770
    iget-object v8, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 773
    :try_start_0
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v8

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_0

    .line 774
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 777
    :cond_0
    iget-object v8, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v8, v8, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v8

    .line 778
    iget-object v9, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v14, 0x60

    invoke-virtual {v9, v14, v8, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 779
    iget-object v9, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    .line 782
    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    const/16 v14, 0x63

    invoke-direct {v1, v14, v7, v9}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    const/16 v9, 0x62

    .line 780
    invoke-static {v9, v7, v3}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v7, v8

    .line 785
    :goto_1
    iget-object v8, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 788
    iget-object v9, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v14, 0xa7

    invoke-virtual {v9, v14, v7, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 789
    aput-object v8, v11, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    iget-object v7, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v7}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 794
    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    aput-object v6, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 791
    :goto_2
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 792
    throw v0

    .line 798
    :cond_1
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v7

    const/16 v8, 0x4e

    invoke-direct {v5, v8, v3, v6, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    .line 800
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x93

    invoke-direct {v3, v6, v5, v0, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    .line 802
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    const/4 v14, 0x0

    if-eqz v5, :cond_2

    .line 803
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-static {v5, v3, v14, v0, v2}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    move-object v6, v3

    move v0, v4

    const/4 v2, 0x0

    :goto_3
    if-ltz v0, :cond_4

    .line 810
    :try_start_1
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    .line 814
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    .line 815
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v4

    .line 812
    invoke-direct {v1, v14, v3, v4}, Lorg/mozilla/javascript/IRFactory;->createLoopNode(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v3

    .line 816
    iget-object v4, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v15, v2, 0x1

    .line 818
    :try_start_2
    aget-object v4, v11, v0

    aget-object v5, v12, v0

    .line 826
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;->isForEach()Z

    move-result v8

    .line 827
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v9

    const/16 v2, 0xa7

    .line 819
    invoke-direct/range {v1 .. v9}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v0, -0x1

    move v2, v15

    goto :goto_3

    :catchall_1
    move-exception v0

    move v2, v15

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    if-ge v13, v2, :cond_3

    .line 831
    iget-object v3, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 833
    :cond_3
    throw v0

    :cond_4
    :goto_5
    if-ge v13, v2, :cond_5

    .line 831
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    return-object v6
.end method

.method private static initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 5

    .line 1401
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    .line 1402
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1404
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0x7a

    if-ne p3, v0, :cond_1

    .line 1411
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1413
    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1422
    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    .line 1423
    new-instance v0, Lorg/mozilla/javascript/Node;

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x36

    .line 1428
    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x45

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/16 v4, 0x8

    invoke-direct {v2, v4, p3, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 p3, 0x93

    invoke-direct {v0, p3, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1430
    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/Node;->addChildrenToFront(Lorg/mozilla/javascript/Node;)V

    .line 1435
    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p3

    const/4 v0, 0x4

    if-eqz p3, :cond_2

    .line 1436
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p3

    if-eq p3, v0, :cond_3

    .line 1437
    :cond_2
    new-instance p3, Lorg/mozilla/javascript/Node;

    invoke-direct {p3, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1440
    :cond_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    const/4 p2, 0x1

    .line 1441
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return-object p0
.end method

.method private static isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I
    .locals 6

    .line 2338
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2d

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 p0, 0x2f

    if-eq v0, p0, :cond_1

    const/16 p0, 0x31

    if-eq v0, p0, :cond_1

    const/16 p0, 0x32

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v3

    :cond_1
    return v2

    .line 2346
    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    .line 2347
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_3

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method private static makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;
    .locals 1

    .line 2315
    new-instance v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 2316
    iput-object p1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method private static makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 2321
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x4c

    .line 2329
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 2330
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v1, p0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method private propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f

    .line 2301
    invoke-virtual {p2, v1, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2302
    invoke-virtual {p1, v1, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_0
    return-object p1
.end method

.method private transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 145
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_16

    const/16 v1, 0x48

    if-eq v0, v1, :cond_15

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_14

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_13

    const/16 v1, 0x59

    if-eq v0, v1, :cond_12

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_11

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_14

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_10

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 232
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformExprStmt(Lorg/mozilla/javascript/ast/ExpressionStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 235
    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v0, :cond_1

    .line 236
    check-cast p1, Lorg/mozilla/javascript/ast/Assignment;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformAssignment(Lorg/mozilla/javascript/ast/Assignment;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 238
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/ast/UnaryExpression;

    if-eqz v0, :cond_2

    .line 239
    check-cast p1, Lorg/mozilla/javascript/ast/UnaryExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformUnary(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 241
    :cond_2
    instance-of v0, p1, Lorg/mozilla/javascript/ast/UpdateExpression;

    if-eqz v0, :cond_3

    .line 242
    check-cast p1, Lorg/mozilla/javascript/ast/UpdateExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformUpdate(Lorg/mozilla/javascript/ast/UpdateExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 244
    :cond_3
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlMemberGet;

    if-eqz v0, :cond_4

    .line 245
    check-cast p1, Lorg/mozilla/javascript/ast/XmlMemberGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlMemberGet(Lorg/mozilla/javascript/ast/XmlMemberGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 247
    :cond_4
    instance-of v0, p1, Lorg/mozilla/javascript/ast/InfixExpression;

    if-eqz v0, :cond_5

    .line 248
    check-cast p1, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformInfix(Lorg/mozilla/javascript/ast/InfixExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 250
    :cond_5
    instance-of v0, p1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v0, :cond_6

    .line 251
    check-cast p1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 253
    :cond_6
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_7

    .line 254
    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformParenExpr(Lorg/mozilla/javascript/ast/ParenthesizedExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 256
    :cond_7
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ComputedPropertyKey;

    if-eqz v0, :cond_8

    .line 257
    check-cast p1, Lorg/mozilla/javascript/ast/ComputedPropertyKey;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformComputedPropertyKey(Lorg/mozilla/javascript/ast/ComputedPropertyKey;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 259
    :cond_8
    instance-of v0, p1, Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_9

    .line 260
    check-cast p1, Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLabeledStatement(Lorg/mozilla/javascript/ast/LabeledStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 262
    :cond_9
    instance-of v0, p1, Lorg/mozilla/javascript/ast/LetNode;

    if-eqz v0, :cond_a

    .line 263
    check-cast p1, Lorg/mozilla/javascript/ast/LetNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLetNode(Lorg/mozilla/javascript/ast/LetNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 265
    :cond_a
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlRef;

    if-eqz v0, :cond_b

    .line 266
    check-cast p1, Lorg/mozilla/javascript/ast/XmlRef;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/ast/XmlRef;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 268
    :cond_b
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlLiteral;

    if-eqz v0, :cond_c

    .line 269
    check-cast p1, Lorg/mozilla/javascript/ast/XmlLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlLiteral(Lorg/mozilla/javascript/ast/XmlLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 271
    :cond_c
    instance-of v0, p1, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    if-eqz v0, :cond_d

    .line 272
    check-cast p1, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformGeneratorMethodDefinition(Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 274
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :pswitch_0
    check-cast p1, Lorg/mozilla/javascript/ast/GeneratorExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformGenExpr(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 159
    :pswitch_1
    check-cast p1, Lorg/mozilla/javascript/ast/ContinueStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformContinue(Lorg/mozilla/javascript/ast/ContinueStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 155
    :pswitch_2
    check-cast p1, Lorg/mozilla/javascript/ast/BreakStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBreak(Lorg/mozilla/javascript/ast/BreakStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_3
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ForInLoop;

    if-eqz v0, :cond_e

    .line 167
    check-cast p1, Lorg/mozilla/javascript/ast/ForInLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformForInLoop(Lorg/mozilla/javascript/ast/ForInLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 169
    :cond_e
    check-cast p1, Lorg/mozilla/javascript/ast/ForLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformForLoop(Lorg/mozilla/javascript/ast/ForLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 161
    :pswitch_4
    check-cast p1, Lorg/mozilla/javascript/ast/DoLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformDoLoop(Lorg/mozilla/javascript/ast/DoLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 225
    :pswitch_5
    check-cast p1, Lorg/mozilla/javascript/ast/WhileLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformWhileLoop(Lorg/mozilla/javascript/ast/WhileLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 194
    :pswitch_6
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 217
    :pswitch_7
    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformString(Lorg/mozilla/javascript/ast/StringLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 201
    :pswitch_8
    check-cast p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformNumber(Lorg/mozilla/javascript/ast/NumberLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 199
    :pswitch_9
    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformName(Lorg/mozilla/javascript/ast/Name;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 157
    :pswitch_a
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionCall;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformFunctionCall(Lorg/mozilla/javascript/ast/FunctionCall;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 179
    :sswitch_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ElementGet;

    if-eqz v0, :cond_f

    .line 180
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 182
    :cond_f
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 209
    :sswitch_1
    check-cast p1, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformTemplateLiteralCall(Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 147
    :sswitch_2
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayComprehension;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformArrayComp(Lorg/mozilla/javascript/ast/ArrayComprehension;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 215
    :sswitch_3
    check-cast p1, Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformScript(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 153
    :sswitch_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBlock(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    :pswitch_b
    :sswitch_5
    return-object p1

    .line 227
    :sswitch_6
    check-cast p1, Lorg/mozilla/javascript/ast/WithStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformWith(Lorg/mozilla/javascript/ast/WithStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 219
    :sswitch_7
    check-cast p1, Lorg/mozilla/javascript/ast/SwitchStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 187
    :sswitch_8
    check-cast p1, Lorg/mozilla/javascript/ast/IfStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformIf(Lorg/mozilla/javascript/ast/IfStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 171
    :sswitch_9
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformFunction(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 185
    :sswitch_a
    check-cast p1, Lorg/mozilla/javascript/ast/ConditionalExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformCondExpr(Lorg/mozilla/javascript/ast/ConditionalExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 221
    :sswitch_b
    check-cast p1, Lorg/mozilla/javascript/ast/ThrowStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformThrow(Lorg/mozilla/javascript/ast/ThrowStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 211
    :sswitch_c
    check-cast p1, Lorg/mozilla/javascript/ast/RegExpLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 175
    :sswitch_d
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 177
    :sswitch_e
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 203
    :sswitch_f
    check-cast p1, Lorg/mozilla/javascript/ast/NewExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformNewExpr(Lorg/mozilla/javascript/ast/NewExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 213
    :sswitch_10
    check-cast p1, Lorg/mozilla/javascript/ast/ReturnStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformReturn(Lorg/mozilla/javascript/ast/ReturnStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 207
    :cond_10
    check-cast p1, Lorg/mozilla/javascript/ast/TemplateLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformTemplateLiteral(Lorg/mozilla/javascript/ast/TemplateLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 223
    :cond_11
    check-cast p1, Lorg/mozilla/javascript/ast/TryStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformTry(Lorg/mozilla/javascript/ast/TryStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 151
    :cond_12
    check-cast p1, Lorg/mozilla/javascript/ast/BigIntLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBigInt(Lorg/mozilla/javascript/ast/BigIntLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 196
    :cond_13
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 197
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 230
    :cond_14
    check-cast p1, Lorg/mozilla/javascript/ast/Yield;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformYield(Lorg/mozilla/javascript/ast/Yield;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 205
    :cond_15
    check-cast p1, Lorg/mozilla/javascript/ast/ObjectLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 149
    :cond_16
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_10
        0x1e -> :sswitch_f
        0x21 -> :sswitch_e
        0x27 -> :sswitch_d
        0x35 -> :sswitch_c
        0x37 -> :sswitch_b
        0x73 -> :sswitch_a
        0x7a -> :sswitch_9
        0x7d -> :sswitch_8
        0x7f -> :sswitch_7
        0x88 -> :sswitch_6
        0x8d -> :sswitch_5
        0x8f -> :sswitch_4
        0x96 -> :sswitch_3
        0xab -> :sswitch_2
        0xb7 -> :sswitch_1
        0xba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x82
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xae
        :pswitch_6
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method private transformArrayComp(Lorg/mozilla/javascript/ast/ArrayComprehension;)Lorg/mozilla/javascript/Node;
    .locals 9

    .line 299
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v1

    .line 300
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v3, 0xab

    invoke-virtual {v2, v3, v0, v1}, Lorg/mozilla/javascript/Parser;->createScopeNode(III)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v2

    .line 301
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v3

    .line 302
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 304
    :try_start_0
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v5, 0xa7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 307
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x8f

    invoke-direct {v4, v5}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 308
    invoke-virtual {v4, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 309
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string v6, "Array"

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {p0, v6, v5}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 310
    new-instance v6, Lorg/mozilla/javascript/Node;

    iget-object v7, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    .line 314
    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    const/16 v8, 0x63

    .line 313
    invoke-direct {p0, v8, v7, v5}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/16 v7, 0x93

    invoke-direct {v6, v7, v5, v0, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    .line 317
    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 318
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/IRFactory;->arrayCompTransformHelper(Lorg/mozilla/javascript/ast/ArrayComprehension;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 319
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 320
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    :try_start_2
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 323
    :try_start_3
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 324
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 327
    throw p1
.end method

.method private transformArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)Lorg/mozilla/javascript/Node;
    .locals 8

    .line 421
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->isDestructuring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 424
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    .line 425
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x47

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 427
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 428
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    .line 429
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x8d

    if-eq v6, v7, :cond_1

    .line 430
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 435
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x15

    .line 438
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    if-eqz v3, :cond_5

    .line 440
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 441
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0xb

    .line 442
    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    :cond_5
    return-object v1
.end method

.method private transformAssignment(Lorg/mozilla/javascript/ast/Assignment;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 448
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 450
    invoke-direct {p0, p1, v1, v0}, Lorg/mozilla/javascript/IRFactory;->transformAssignmentLeft(Lorg/mozilla/javascript/ast/Assignment;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 453
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->isDestructuring(Lorg/mozilla/javascript/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 456
    :cond_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 459
    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 461
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 464
    throw p1
.end method

.method private transformAssignmentLeft(Lorg/mozilla/javascript/ast/Assignment;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 2

    .line 468
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 469
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    instance-of v0, p2, Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_1

    instance-of p3, p3, Lorg/mozilla/javascript/ast/KeywordLiteral;

    if-eqz p3, :cond_1

    .line 473
    move-object p3, p2

    check-cast p3, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    .line 474
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 475
    instance-of v1, v0, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v1, :cond_0

    .line 476
    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    new-instance p3, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {p3}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>()V

    .line 479
    new-instance v0, Lorg/mozilla/javascript/ast/KeywordLiteral;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>()V

    const/16 v1, 0x30

    .line 480
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/KeywordLiteral;->setType(I)Lorg/mozilla/javascript/ast/KeywordLiteral;

    .line 481
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 482
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 483
    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object p3

    .line 474
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private transformBigInt(Lorg/mozilla/javascript/ast/BigIntLiteral;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 0
    return-object p1
.end method

.method private transformBlock(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 497
    instance-of v0, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_0

    .line 498
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    move-object v2, p1

    check-cast v2, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 501
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/Node;

    .line 503
    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 505
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->removeChildren()V

    .line 506
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    .line 507
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 511
    :cond_2
    instance-of v0, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_3
    return-object p1

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 514
    :cond_4
    throw p1
.end method

.method private transformBreak(Lorg/mozilla/javascript/ast/BreakStatement;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 0
    return-object p1
.end method

.method private transformComputedPropertyKey(Lorg/mozilla/javascript/ast/ComputedPropertyKey;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 976
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ComputedPropertyKey;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 977
    new-instance v1, Lorg/mozilla/javascript/Node;

    iget p1, p1, Lorg/mozilla/javascript/Node;->type:I

    invoke-direct {v1, p1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v1
.end method

.method private transformCondExpr(Lorg/mozilla/javascript/ast/ConditionalExpression;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 522
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getTestExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 523
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getTrueExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 524
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getFalseExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 525
    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/IRFactory;->createCondExpr(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformContinue(Lorg/mozilla/javascript/ast/ContinueStatement;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 0
    return-object p1
.end method

.method private transformDefaultXmlNamespace(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;
    .locals 1

    .line 1325
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    const/16 v0, 0x52

    .line 1326
    invoke-static {v0, p1}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformDoLoop(Lorg/mozilla/javascript/ast/DoLoop;)Lorg/mozilla/javascript/Node;
    .locals 7

    const/16 v0, 0x92

    .line 533
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 534
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 536
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 537
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/DoLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    .line 538
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 541
    throw p1
.end method

.method private transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 547
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 548
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 549
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x27

    invoke-direct {v2, v3, v0, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 550
    iget p1, p1, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0xba

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x1e

    .line 551
    invoke-virtual {v2, p1, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 553
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_1

    const/16 p1, 0x1f

    .line 554
    invoke-virtual {v2, p1, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_1
    return-object v2
.end method

.method private transformExprStmt(Lorg/mozilla/javascript/ast/ExpressionStatement;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 560
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 561
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v1, v2, v0, v3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    return-object v1
.end method

.method private transformForInLoop(Lorg/mozilla/javascript/ast/ForInLoop;)Lorg/mozilla/javascript/Node;
    .locals 11

    const/16 v0, 0x92

    .line 565
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 566
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 569
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 570
    instance-of v1, v0, Lorg/mozilla/javascript/ast/VariableDeclaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 571
    :try_start_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    const/4 v3, -0x1

    .line 573
    :goto_0
    :try_start_2
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 574
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 575
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 577
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v9

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v8, p1

    move-object v2, p0

    move-object v4, p1

    .line 576
    :try_start_3
    invoke-direct/range {v2 .. v10}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 579
    iget-object v0, v2, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, p0

    goto :goto_1

    :goto_2
    iget-object v0, v2, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 580
    throw p1
.end method

.method private transformForLoop(Lorg/mozilla/javascript/ast/ForLoop;)Lorg/mozilla/javascript/Node;
    .locals 5

    const/16 v0, 0x92

    .line 584
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 587
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 588
    iput-object p1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 590
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 591
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 592
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getIncrement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 593
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 594
    invoke-static {p1, v0, v2, v3, v4}, Lorg/mozilla/javascript/IRFactory;->createFor(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object v1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object v1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 597
    throw p1
.end method

.method private transformFunction(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 601
    invoke-virtual/range {p0 .. p1}, Lorg/mozilla/javascript/IRFactory;->decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 602
    iget-object v3, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I

    move-result v3

    .line 604
    iget-object v4, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/Parser;->createPerFunctionVariables(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    move-result-object v4

    const/16 v5, 0x17

    const/4 v6, 0x1

    .line 608
    :try_start_0
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/Node;

    .line 609
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 611
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v5

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v8

    .line 612
    iget-object v9, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v10, v9, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/2addr v10, v6

    iput v10, v9, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 613
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    .line 616
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getDefaultParams()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 618
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v6

    :goto_0
    if-lez v13, :cond_1

    .line 619
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v14, :cond_0

    add-int/lit8 v14, v13, -0x1

    .line 620
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 621
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/mozilla/javascript/ast/AstNode;

    .line 622
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v16, 0x1

    .line 623
    :try_start_1
    iget-object v6, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    .line 627
    invoke-virtual {v6, v14}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    iget-object v12, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string v11, "undefined"

    .line 628
    invoke-virtual {v12, v11}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v11

    const/16 v12, 0x33

    .line 625
    invoke-static {v12, v6, v11}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    new-instance v11, Lorg/mozilla/javascript/Node;

    iget-object v12, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    .line 633
    invoke-virtual {v12, v14}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    .line 634
    invoke-direct {v1, v15}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v14

    const/16 v15, 0x63

    .line 631
    invoke-direct {v1, v15, v12, v14}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    .line 635
    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v14

    .line 636
    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v4

    const/16 v4, 0x93

    :try_start_2
    invoke-direct {v11, v4, v12, v14, v15}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    .line 638
    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v4

    .line 639
    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v12

    const/4 v14, 0x0

    .line 624
    invoke-static {v6, v11, v14, v4, v12}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 623
    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_0
    move-object/from16 v17, v4

    const/16 v16, 0x1

    :goto_1
    add-int/lit8 v13, v13, -0x2

    move-object/from16 v4, v17

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v17, v4

    const/16 v16, 0x1

    .line 646
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getDestructuringRvalues()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 648
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/mozilla/javascript/Node;

    const/4 v10, 0x0

    .line 649
    aget-object v10, v6, v10

    .line 650
    aget-object v6, v6, v16

    instance-of v11, v6, Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v11, :cond_2

    .line 651
    check-cast v6, Lorg/mozilla/javascript/ast/AstNode;

    .line 652
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    .line 658
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x93

    invoke-direct {v4, v6, v7, v5, v8}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 661
    :cond_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v4

    .line 662
    invoke-static {v0, v3, v9, v4}, Lorg/mozilla/javascript/IRFactory;->initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v2, :cond_5

    .line 664
    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v15, 0x63

    .line 666
    :try_start_3
    invoke-direct {v1, v15, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 668
    :try_start_4
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    const/4 v2, 0x2

    if-eq v4, v2, :cond_5

    .line 671
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v0

    invoke-static {v3, v2, v0}, Lorg/mozilla/javascript/IRFactory;->createExprStatementNoReturn(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 668
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 669
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 677
    :cond_5
    :goto_3
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v2, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 678
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    return-object v3

    .line 677
    :goto_4
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v3, v2, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 678
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    .line 679
    throw v0
.end method

.method private transformFunctionCall(Lorg/mozilla/javascript/ast/FunctionCall;)Lorg/mozilla/javascript/Node;
    .locals 6

    .line 683
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 685
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v1, 0x2b

    .line 686
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 687
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 688
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 689
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 690
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    .line 691
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 693
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->isOptionalCall()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/16 p1, 0x1e

    .line 694
    invoke-virtual {v1, p1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_1
    const/16 p1, 0x1f

    .line 696
    invoke-virtual {v0, p1, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 697
    invoke-virtual {v1, p1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    return-object v1

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 702
    throw p1
.end method

.method private transformGenExpr(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;
    .locals 11

    .line 708
    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>()V

    .line 709
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsGenerator()V

    const/4 v1, 0x2

    .line 711
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    .line 712
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    .line 714
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 715
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I

    move-result v3

    .line 717
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/Parser;->createPerFunctionVariables(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    move-result-object v4

    const/16 v5, 0x17

    .line 721
    :try_start_0
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/Node;

    .line 722
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 724
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v7

    .line 725
    iget-object v8, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v9, v8, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 726
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->genExprTransformHelper(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    if-eqz v6, :cond_0

    .line 729
    new-instance v9, Lorg/mozilla/javascript/Node;

    const/16 v10, 0x93

    invoke-direct {v9, v10, v6, v5, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 732
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v5

    .line 733
    invoke-static {v0, v3, v8, v5}, Lorg/mozilla/javascript/IRFactory;->initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 735
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v6, v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x63

    .line 737
    :try_start_1
    invoke-direct {p0, v6, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 739
    :try_start_2
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    if-eq v5, v1, :cond_1

    .line 742
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v0

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createExprStatementNoReturn(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 739
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 740
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v1, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 747
    invoke-virtual {v4}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    const/16 v0, 0x2b

    .line 750
    invoke-direct {p0, v0, v3}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 751
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v0

    .line 746
    :goto_2
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v1, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 747
    invoke-virtual {v4}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    .line 748
    throw p1
.end method

.method private transformGeneratorMethodDefinition(Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 1331
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->getMethodName()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformIf(Lorg/mozilla/javascript/ast/IfStatement;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 839
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 840
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getThenPart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 842
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getElsePart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 843
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getElsePart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 845
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformInfix(Lorg/mozilla/javascript/ast/InfixExpression;)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 849
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 850
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 851
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-static {v2, v0, v1}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    if-eq v2, v0, :cond_0

    if-eq v2, v1, :cond_0

    .line 860
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v2, v0, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    :cond_0
    return-object v2
.end method

.method private transformLabeledStatement(Lorg/mozilla/javascript/ast/LabeledStatement;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 867
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v0

    .line 868
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 872
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 873
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x8f

    invoke-direct {v2, v3, v0, p1, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 874
    iput-object v1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    return-object v2
.end method

.method private transformLetNode(Lorg/mozilla/javascript/ast/LetNode;)Lorg/mozilla/javascript/Node;
    .locals 1

    .line 880
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 882
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getVariables()Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 883
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 884
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 885
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 890
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 891
    throw p1
.end method

.method private transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 898
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    instance-of v0, v0, Lorg/mozilla/javascript/ast/FunctionCall;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    .line 899
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.super.shorthand.function"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private transformName(Lorg/mozilla/javascript/ast/Name;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 0
    return-object p1
.end method

.method private transformNewExpr(Lorg/mozilla/javascript/ast/NewExpression;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 908
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 909
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 910
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 911
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 912
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    .line 913
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 916
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_1
    return-object v0
.end method

.method private transformNumber(Lorg/mozilla/javascript/ast/NumberLiteral;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 0
    return-object p1
.end method

.method private transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;
    .locals 6

    .line 926
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->isDestructuring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 932
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    .line 933
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 934
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 936
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 937
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_4

    .line 939
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 940
    new-array p1, p1, [Ljava/lang/Object;

    .line 941
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/ObjectProperty;

    .line 942
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/Parser;->getPropKey(Lorg/mozilla/javascript/Node;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 944
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    .line 945
    aput-object v4, p1, v2

    :goto_1
    move v2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v2, 0x1

    .line 947
    aput-object v4, p1, v2

    goto :goto_1

    .line 950
    :goto_2
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 951
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetterMethod()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0xa5

    .line 952
    invoke-static {v3, v4}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_3

    .line 953
    :cond_3
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetterMethod()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v3, 0xa6

    .line 954
    invoke-static {v3, v4}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_3

    .line 955
    :cond_4
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->isNormalMethod()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xb1

    .line 956
    invoke-static {v3, v4}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 958
    :cond_5
    :goto_3
    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_6
    :goto_4
    const/16 v0, 0xc

    .line 961
    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v1
.end method

.method private transformParenExpr(Lorg/mozilla/javascript/ast/ParenthesizedExpression;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 966
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    .line 967
    :goto_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_0

    .line 968
    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_0

    .line 970
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    const/16 v0, 0x13

    .line 971
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object p1
.end method

.method private transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;
    .locals 7

    .line 981
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 982
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 983
    iget v6, p1, Lorg/mozilla/javascript/Node;->type:I

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)Lorg/mozilla/javascript/Node;
    .locals 1

    .line 1025
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)V

    return-object p1
.end method

.method private transformReturn(Lorg/mozilla/javascript/ast/ReturnStatement;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 1030
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->getReturnValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    :goto_0
    const/4 v2, 0x4

    if-nez v0, :cond_1

    .line 1033
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v0, v2, v1, p1}, Lorg/mozilla/javascript/Node;-><init>(III)V

    return-object v0

    .line 1034
    :cond_1
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v0, v2, v1, v3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    return-object v0
.end method

.method private transformScript(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 1038
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1039
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object p1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 1040
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x8f

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1041
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    .line 1042
    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->removeChildren()V

    .line 1045
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1047
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    :cond_2
    return-object p1
.end method

.method private transformString(Lorg/mozilla/javascript/ast/StringLiteral;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1053
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1054
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v0
.end method

.method private transformSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)Lorg/mozilla/javascript/Node;
    .locals 5

    .line 1098
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1099
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1101
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    const/16 v3, 0x8f

    invoke-direct {v0, v3, p1, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    .line 1103
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getCases()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/SwitchCase;

    .line 1104
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/SwitchCase;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1108
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1111
    :goto_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/SwitchCase;->getStatements()Ljava/util/List;

    move-result-object v1

    .line 1112
    new-instance v3, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/Block;-><init>()V

    if-eqz v1, :cond_1

    .line 1114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/AstNode;

    .line 1115
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 1118
    :cond_1
    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/IRFactory;->addSwitchCase(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 1120
    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/IRFactory;->closeSwitch(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private transformTemplateLiteral(Lorg/mozilla/javascript/ast/TemplateLiteral;)Lorg/mozilla/javascript/Node;
    .locals 5

    .line 987
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TemplateLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    .line 989
    const-string v0, ""

    invoke-static {v0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 990
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .line 991
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0xb5

    const/16 v4, 0x15

    if-eq v2, v3, :cond_1

    .line 992
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 994
    :cond_1
    check-cast v1, Lorg/mozilla/javascript/ast/TemplateCharacters;

    .line 996
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/TemplateCharacters;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 998
    invoke-static {v1}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private transformTemplateLiteralCall(Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;)Lorg/mozilla/javascript/Node;
    .locals 5

    .line 1006
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v1, 0x2b

    .line 1007
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1008
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    const/4 v2, 0x0

    const/16 v3, 0x1f

    .line 1009
    invoke-virtual {v0, v3, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1010
    invoke-virtual {v1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1012
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;->getTemplateLiteral()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/TemplateLiteral;

    .line 1013
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TemplateLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    .line 1014
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1015
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    .line 1016
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0xb5

    if-eq v3, v4, :cond_1

    .line 1017
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 1020
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addTemplateLiteral(Lorg/mozilla/javascript/ast/TemplateLiteral;)V

    return-object v1
.end method

.method private transformThrow(Lorg/mozilla/javascript/ast/ThrowStatement;)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 1125
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ThrowStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1126
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    .line 1127
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x37

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1128
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v1
.end method

.method private transformTry(Lorg/mozilla/javascript/ast/TryStatement;)Lorg/mozilla/javascript/Node;
    .locals 12

    .line 1133
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getTryBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1135
    new-instance v3, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/Block;-><init>()V

    .line 1136
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getCatchClauses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/CatchClause;

    .line 1137
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/CatchClause;->getVarName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1142
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1144
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/CatchClause;->getCatchCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1146
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    :goto_1
    move-object v7, v4

    move-object v8, v5

    goto :goto_2

    .line 1148
    :cond_0
    new-instance v5, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v5}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>()V

    goto :goto_1

    :cond_1
    move-object v7, v4

    move-object v8, v7

    .line 1152
    :goto_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/CatchClause;->getBody()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    .line 1155
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v10

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/mozilla/javascript/IRFactory;->createCatch(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1154
    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_2
    move-object v6, p0

    .line 1158
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1159
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1162
    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    move-object v1, v6

    move v6, p1

    .line 1161
    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createTryCatchFinally(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformUnary(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1166
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 1168
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformDefaultXmlNamespace(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    .line 1171
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1172
    invoke-static {v0, p1}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformUpdate(Lorg/mozilla/javascript/ast/UpdateExpression;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1176
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    .line 1177
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UpdateExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1178
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UpdateExpression;->isPostfix()Z

    move-result p1

    invoke-static {v0, p1, v1}, Lorg/mozilla/javascript/IRFactory;->createIncDec(IZLorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;
    .locals 6

    .line 1187
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v0

    .line 1188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/VariableInitializer;

    .line 1189
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 1190
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->getInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 1193
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->isDestructuring()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1196
    :cond_0
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_1
    if-eqz v3, :cond_1

    .line 1201
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 1204
    :goto_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->isDestructuring()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    .line 1206
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 1208
    :cond_2
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1210
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    .line 1212
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    new-instance v5, Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/IRFactory;)V

    .line 1211
    invoke-virtual {v1, v4, v2, v3, v5}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1213
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 1216
    throw p1

    :cond_3
    if-eqz v3, :cond_4

    .line 1220
    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1222
    :cond_4
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method private transformVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 1182
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    return-object p1
.end method

.method private transformWhileLoop(Lorg/mozilla/javascript/ast/WhileLoop;)Lorg/mozilla/javascript/Node;
    .locals 7

    const/16 v0, 0x92

    .line 1229
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 1230
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 1232
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WhileLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1233
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    move-object v1, p1

    .line 1234
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 1237
    throw p1
.end method

.method private transformWith(Lorg/mozilla/javascript/ast/WithStatement;)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 1241
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1242
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1243
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/mozilla/javascript/IRFactory;->createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlLiteral(Lorg/mozilla/javascript/ast/XmlLiteral;)Lorg/mozilla/javascript/Node;
    .locals 6

    .line 1256
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    const/16 v3, 0x1e

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(III)V

    .line 1257
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlLiteral;->getFragments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 1259
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/XmlString;

    .line 1260
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/XmlString;->getXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1261
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    if-eqz v1, :cond_0

    const-string v1, "XMLList"

    goto :goto_0

    :cond_0
    const-string v1, "XML"

    :goto_0
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/XmlFragment;

    .line 1265
    instance-of v3, v2, Lorg/mozilla/javascript/ast/XmlString;

    const/16 v4, 0x15

    if-eqz v3, :cond_2

    .line 1266
    check-cast v2, Lorg/mozilla/javascript/ast/XmlString;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlString;->getXml()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    .line 1268
    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_1

    .line 1270
    :cond_1
    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_1

    .line 1273
    :cond_2
    check-cast v2, Lorg/mozilla/javascript/ast/XmlExpression;

    .line 1274
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->isXmlAttribute()Z

    move-result v3

    .line 1276
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    instance-of v5, v5, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-eqz v5, :cond_3

    .line 1277
    const-string v2, ""

    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_2

    .line 1279
    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_2
    if-eqz v3, :cond_4

    const/16 v3, 0x53

    .line 1283
    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1284
    const-string v3, "\""

    invoke-static {v3}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1285
    invoke-static {v3}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/16 v3, 0x54

    .line 1287
    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1289
    :goto_3
    invoke-static {v4, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_1

    .line 1293
    :cond_5
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private transformXmlMemberGet(Lorg/mozilla/javascript/ast/XmlMemberGet;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 1298
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getMemberRef()Lorg/mozilla/javascript/ast/XmlRef;

    move-result-object v0

    .line 1299
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1300
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1301
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v3, 0x9d

    if-ne p1, v3, :cond_1

    or-int/lit8 v2, v2, 0x4

    .line 1304
    :cond_1
    invoke-direct {p0, v1, v0, v2}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;
    .locals 7

    .line 1314
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlRef;->getNamespace()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1316
    :goto_1
    instance-of v0, p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    if-eqz v0, :cond_1

    .line 1317
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ast/XmlPropRef;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/XmlPropRef;->getPropName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 1318
    iget v6, p2, Lorg/mozilla/javascript/Node;->type:I

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v5, p3

    .line 1320
    check-cast p2, Lorg/mozilla/javascript/ast/XmlElemRef;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlElemRef;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1321
    invoke-direct {p0, v2, v3, p1, v5}, Lorg/mozilla/javascript/IRFactory;->createElementGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlRef(Lorg/mozilla/javascript/ast/XmlRef;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1309
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 1310
    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformYield(Lorg/mozilla/javascript/ast/Yield;)Lorg/mozilla/javascript/Node;
    .locals 4

    .line 1247
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1248
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v1, v2, v0, v3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    return-object v1

    .line 1249
    :cond_1
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 2362
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2364
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2365
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method isDestructuring(Lorg/mozilla/javascript/Node;)Z
    .locals 1

    .line 2358
    instance-of v0, p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    invoke-interface {p1}, Lorg/mozilla/javascript/ast/DestructuringForm;->isDestructuring()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object p1, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 122
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v1

    iput-boolean v1, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 129
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 131
    :try_start_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/ScriptNode;
    :try_end_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 133
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->reportErrorsIfExists(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    const/4 p1, 0x0

    return-object p1

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    .line 137
    throw p1
.end method
