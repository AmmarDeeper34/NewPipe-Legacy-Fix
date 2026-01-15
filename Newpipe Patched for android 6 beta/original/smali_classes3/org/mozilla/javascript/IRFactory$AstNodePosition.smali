.class public Lorg/mozilla/javascript/IRFactory$AstNodePosition;
.super Ljava/lang/Object;
.source "IRFactory.java"

# interfaces
.implements Lorg/mozilla/javascript/Parser$CurrentPositionReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/IRFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AstNodePosition"
.end annotation


# instance fields
.field private savedLine:Ljava/lang/String;

.field private savedLineOffset:I

.field private savedLineno:I

.field private sourceString:Ljava/lang/String;

.field private stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2374
    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    .line 2379
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    .line 2380
    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    return-void
.end method

.method private cutAndSaveLine()V
    .locals 8

    .line 2407
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->getLineno()I

    move-result v0

    .line 2408
    iget v1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2415
    :goto_0
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 2416
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v4, :cond_1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0xd

    if-ne v6, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ne v5, v0, :cond_3

    goto :goto_3

    .line 2425
    :cond_3
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    move v4, v3

    .line 2431
    :goto_4
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 2432
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2433
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2438
    :cond_7
    :goto_5
    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    if-nez v4, :cond_8

    .line 2440
    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    .line 2441
    iput v1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    return-void

    .line 2443
    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    .line 2444
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->getPosition()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 2398
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v0

    return v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 1

    .line 2450
    invoke-direct {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->cutAndSaveLine()V

    .line 2451
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    return-object v0
.end method

.method public getLineno()I
    .locals 1

    .line 2403
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 2456
    invoke-direct {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->cutAndSaveLine()V

    .line 2457
    iget v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 2393
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v0

    return v0
.end method

.method public pop()V
    .locals 1

    .line 2388
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    return-void
.end method

.method public push(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    .line 2384
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method
