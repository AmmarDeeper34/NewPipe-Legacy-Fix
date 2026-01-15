.class public abstract Lorg/schabi/newpipe/extractor/utils/jsextractor/JavaScriptExtractor;
.super Ljava/lang/Object;
.source "JavaScriptExtractor.java"


# direct methods
.method public static matchToClosingBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 34
    new-instance p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->getNextToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;

    move-result-object v2

    .line 39
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 41
    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->isBalanced()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    iget p1, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->end:I

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_1
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v3, v2, :cond_2

    goto :goto_0

    .line 46
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not find matching braces"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Start not found"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
