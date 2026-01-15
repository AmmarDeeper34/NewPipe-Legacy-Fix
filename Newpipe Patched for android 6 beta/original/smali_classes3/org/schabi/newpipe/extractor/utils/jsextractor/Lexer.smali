.class public Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;
    }
.end annotation


# instance fields
.field private final braceStack:Ljava/util/Stack;

.field private final lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

.field private final parenStack:Ljava/util/Stack;

.field private final stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    .line 133
    new-instance p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    .line 134
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    .line 135
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method checkForExpression(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 1

    .line 264
    iget-boolean v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getNextToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
    .locals 4

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->nextToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    .line 146
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->isRegexStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readRegExp(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)V

    .line 148
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->REGEXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 151
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v3, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    invoke-direct {v1, v0, v3, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;II)V

    .line 152
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->keepBooks(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;)V

    return-object v1
.end method

.method handleCloseBraceBooks(I)V
    .locals 4

    .line 257
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;)V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    return-void

    .line 258
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmatched closing brace at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCloseParenBooks(I)V
    .locals 4

    .line 247
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    return-void

    .line 248
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmatched closing paren at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleOpenBraceBooks()V
    .locals 5

    .line 214
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$1;->$SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token:[I

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 230
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    xor-int/2addr v1, v0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    iget v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->lineno:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :pswitch_2
    const/4 v1, 0x0

    .line 235
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    instance-of v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_2

    .line 236
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 238
    :goto_1
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;-><init>(ZLorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    .line 239
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v4, v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    invoke-direct {v1, v3, v4, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method handleOpenParenBooks()V
    .locals 5

    .line 195
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->oneIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->checkForExpression(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->twoIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->three()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->three()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->checkForExpression(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 201
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    .line 202
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isConditional()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 204
    :goto_2
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;-><init>(ZZ)V

    .line 205
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v4, v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    return-void
.end method

.method public isBalanced()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isRegexStart()Z
    .locals 4

    .line 274
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 275
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 276
    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isKeyw:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 277
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v3

    .line 278
    :cond_1
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    instance-of v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    if-eqz v2, :cond_2

    .line 279
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;->conditional:Z

    return v0

    .line 280
    :cond_2
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    instance-of v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    if-eqz v2, :cond_5

    .line 281
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    .line 282
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    if-eqz v2, :cond_4

    .line 283
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    if-eqz v0, :cond_3

    .line 284
    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;->funcExpr:Z

    xor-int/2addr v0, v1

    return v0

    :cond_3
    return v1

    :cond_4
    return v3

    .line 291
    :cond_5
    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isPunct:Z

    if-eqz v2, :cond_6

    .line 292
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    return v3

    :cond_7
    return v1
.end method

.method keepBooks(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;)V
    .locals 3

    .line 169
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-boolean v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isPunct:Z

    if-eqz v1, :cond_4

    .line 170
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$1;->$SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget p1, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->start:I

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->handleCloseBraceBooks(I)V

    return-void

    .line 178
    :cond_1
    iget p1, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->start:I

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->handleCloseParenBooks(I)V

    return-void

    .line 175
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->handleOpenBraceBooks()V

    return-void

    .line 172
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->handleOpenParenBooks()V

    return-void

    .line 185
    :cond_4
    :goto_0
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq p1, v0, :cond_5

    .line 186
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    invoke-direct {v1, p1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    :cond_5
    return-void
.end method
