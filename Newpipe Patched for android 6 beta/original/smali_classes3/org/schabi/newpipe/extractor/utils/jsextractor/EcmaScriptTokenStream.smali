.class Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;
.super Ljava/lang/Object;
.source "EcmaScriptTokenStream.java"


# instance fields
.field private cursor:I

.field private dirtyLine:Z

.field private lineEndChar:I

.field lineno:I

.field private sourceCursor:I

.field private final sourceString:Ljava/lang/String;

.field private final strictMode:Z

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 961
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    const/4 v0, 0x3

    .line 965
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    const/4 v0, -0x1

    .line 968
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 43
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    .line 45
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 47
    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 48
    iput-boolean p3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->strictMode:Z

    return-void
.end method

.method private addToString(I)V
    .locals 4

    .line 842
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 843
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 844
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 845
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 846
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    .line 848
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    int-to-char p1, p1

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 849
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    return-void
.end method

.method private getChar()I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 878
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getChar(Z)I
    .locals 1

    const/4 v0, 0x0

    .line 882
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    move-result p1

    return p1
.end method

.method private getChar(ZZ)I
    .locals 5

    .line 886
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    .line 887
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 888
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    aget p1, p1, v0

    return p1

    .line 892
    :cond_0
    :goto_0
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 895
    :cond_1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 896
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceString:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    const/16 v3, 0xa

    if-nez p2, :cond_3

    .line 898
    iget v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    if-ltz v4, :cond_3

    if-ne v4, v1, :cond_2

    if-ne v0, v3, :cond_2

    .line 900
    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    goto :goto_0

    .line 903
    :cond_2
    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 904
    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    :cond_3
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_8

    .line 909
    :cond_4
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    return v3

    :cond_5
    const v1, 0xfeff

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    .line 916
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isJSFormatChar(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 919
    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 920
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    return v3

    :cond_8
    :goto_1
    return v0
.end method

.method private getCharIgnoreLineEnd()I
    .locals 1

    const/4 v0, 0x1

    .line 929
    invoke-direct {p0, v0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getCharIgnoreLineEnd(Z)I
    .locals 1

    const/4 v0, 0x1

    .line 933
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    move-result p1

    return p1
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .locals 4

    .line 837
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 838
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static isAlpha(I)Z
    .locals 3

    .line 0
    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private static isDigit(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isDigit(II)Z
    .locals 1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    .line 745
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    .line 746
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isHexDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 747
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isOctalDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 748
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDualDigit(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static isDualDigit(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-eq v0, p0, :cond_1

    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isHexDigit(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isJSFormatChar(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char p0, p0

    .line 781
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isJSSpace(I)Z
    .locals 4

    const/16 v0, 0x7f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-gt p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    if-eq p0, v3, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_4

    const v0, 0xfeff

    if-eq p0, v0, :cond_4

    int-to-char p0, p0

    .line 777
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private static isOctalDigit(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private matchChar(I)Z
    .locals 1

    .line 862
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 864
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    const/4 p1, 0x1

    return p1

    .line 867
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private peekChar()I
    .locals 1

    .line 872
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v0

    .line 873
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    return v0
.end method

.method private readDigits(II)I
    .locals 3

    .line 697
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 700
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    :goto_0
    const/16 v1, 0x5f

    if-ne p2, v1, :cond_4

    .line 709
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result p2

    const/16 v2, 0xa

    if-eq p2, v2, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 716
    :cond_1
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 718
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    return v1

    .line 721
    :cond_2
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, -0x2

    return p1

    .line 722
    :cond_4
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 723
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 724
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result p2

    if-ne p2, v0, :cond_0

    return v0

    :cond_5
    return p2
.end method

.method private skipLine()V
    .locals 2

    .line 945
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 947
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    return-void
.end method

.method private stringToKeyword(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->strictMode:Z

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringToKeywordForES(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object p1

    return-object p1
.end method

.method private static stringToKeywordForES(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 2

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "await"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_27
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_28
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_29
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_0

    :cond_29
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2a
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2b
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2c
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2d
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 71
    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEFAULT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 85
    :pswitch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 93
    :pswitch_2
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INSTANCEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 69
    :pswitch_3
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEBUGGER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 117
    :pswitch_4
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 113
    :pswitch_5
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 103
    :pswitch_6
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 119
    :pswitch_7
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FALSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 65
    :pswitch_8
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONST:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 63
    :pswitch_9
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CATCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 59
    :pswitch_a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BREAK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 115
    :pswitch_b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 111
    :pswitch_c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VOID:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 123
    :pswitch_d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 101
    :pswitch_e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 121
    :pswitch_f
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NULL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 77
    :pswitch_10
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ELSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 61
    :pswitch_11
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 109
    :pswitch_12
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VAR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 105
    :pswitch_13
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 95
    :pswitch_14
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NEW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 125
    :pswitch_15
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 83
    :pswitch_16
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 91
    :pswitch_17
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 87
    :pswitch_18
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 75
    :pswitch_19
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DO:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 67
    :pswitch_1a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONTINUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 81
    :pswitch_1b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FINALLY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 107
    :pswitch_1c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TYPEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 99
    :pswitch_1d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SWITCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 97
    :pswitch_1e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1f
    if-eqz p1, :cond_2e

    .line 140
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 144
    :cond_2e
    :goto_1
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 89
    :pswitch_20
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IMPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 79
    :pswitch_21
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 131
    :pswitch_22
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    .line 73
    :pswitch_23
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DELPROP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2d
        -0x4dd2db67 -> :sswitch_2c
        -0x4cd6ec4c -> :sswitch_2b
        -0x469e8c5b -> :sswitch_2a
        -0x3a424d97 -> :sswitch_29
        -0x37b1c2d0 -> :sswitch_28
        -0x368fa850 -> :sswitch_27
        -0x35323192 -> :sswitch_26
        -0x350448cc -> :sswitch_25
        -0x3330496f -> :sswitch_24
        -0x32dbb67d -> :sswitch_23
        -0x301acbba -> :sswitch_22
        -0x24459452 -> :sswitch_21
        -0x21ced359 -> :sswitch_20
        -0x12beda7d -> :sswitch_1f
        0xc8b -> :sswitch_1e
        0xd1d -> :sswitch_1d
        0xd25 -> :sswitch_1c
        0x18cc9 -> :sswitch_1b
        0x1a21b -> :sswitch_1a
        0x1a9a0 -> :sswitch_19
        0x1c1bb -> :sswitch_18
        0x1c727 -> :sswitch_17
        0x2e7b30 -> :sswitch_16
        0x2f8d39 -> :sswitch_15
        0x2f9501 -> :sswitch_14
        0x33c587 -> :sswitch_13
        0x364e9e -> :sswitch_12
        0x36758e -> :sswitch_11
        0x375194 -> :sswitch_10
        0x37b0c6 -> :sswitch_f
        0x58e7956 -> :sswitch_e
        0x59a58ff -> :sswitch_d
        0x5a0eebb -> :sswitch_c
        0x5a5a978 -> :sswitch_b
        0x5a73763 -> :sswitch_a
        0x5cb1923 -> :sswitch_9
        0x68b6f7b -> :sswitch_8
        0x693a6e6 -> :sswitch_7
        0x6bdcb31 -> :sswitch_6
        0x6da5f8d -> :sswitch_5
        0x1df56d39 -> :sswitch_4
        0x20a6f421 -> :sswitch_3
        0x35c3d12c -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1a
        :pswitch_1f
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_22
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_22
        :pswitch_a
        :pswitch_9
        :pswitch_22
        :pswitch_8
        :pswitch_7
        :pswitch_22
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ungetChar(I)V
    .locals 3

    .line 854
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 855
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 857
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 858
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .locals 3

    .line 937
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 938
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    return-void
.end method


# virtual methods
.method final getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 18

    move-object/from16 v0, p0

    .line 154
    :cond_0
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 156
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 157
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 158
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    :cond_1
    const/16 v3, 0xa

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 160
    iput-boolean v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    .line 161
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 162
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 163
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 164
    :cond_2
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isJSSpace(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-eq v1, v5, :cond_3

    .line 166
    iput-boolean v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    .line 173
    :cond_3
    iget v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 174
    iput v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    const/16 v7, 0x75

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_6

    .line 181
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 185
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_1

    .line 188
    :cond_4
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    const/16 v1, 0x5c

    const/4 v9, 0x0

    :cond_5
    :goto_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    int-to-char v9, v1

    .line 192
    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 194
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 195
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_0

    .line 199
    :goto_1
    const-string v11, "illegal character: \'%c\'"

    const/4 v12, 0x4

    if-eqz v9, :cond_10

    move v1, v10

    :goto_2
    if-eqz v10, :cond_a

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3
    if-eq v3, v12, :cond_8

    .line 211
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v9

    .line 212
    invoke-static {v9, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v5

    if-gez v5, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-ltz v5, :cond_9

    .line 221
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    const/4 v10, 0x0

    goto :goto_2

    .line 219
    :cond_9
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "invalid unicode escape"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_a
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v3

    if-ne v3, v8, :cond_c

    .line 226
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-ne v1, v7, :cond_b

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_2

    .line 231
    :cond_b
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    if-eq v3, v2, :cond_e

    const v5, 0xfeff

    if-eq v3, v5, :cond_e

    int-to-char v5, v3

    .line 237
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    .line 240
    :cond_d
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_2

    .line 244
    :cond_e
    :goto_5
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 246
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_f

    .line 252
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringToKeyword(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v1

    .line 253
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v1, v2, :cond_f

    return-object v1

    .line 257
    :cond_f
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NAME:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 261
    :cond_10
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v9

    const/16 v10, 0x6e

    const/16 v13, 0x62

    const/16 v14, 0x2b

    const/16 v15, 0x2e

    const/16 v16, 0x4

    const/16 v7, 0x78

    const/16 v17, 0x2

    const/16 v12, 0x30

    if-nez v9, :cond_54

    if-ne v1, v15, :cond_11

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->peekChar()I

    move-result v9

    invoke-static {v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_11

    goto/16 :goto_12

    :cond_11
    const/16 v9, 0x22

    const/16 v15, 0x60

    if-eq v1, v9, :cond_3f

    const/16 v9, 0x27

    if-eq v1, v9, :cond_3f

    if-ne v1, v15, :cond_12

    goto/16 :goto_a

    :cond_12
    const/16 v3, 0x21

    const/16 v7, 0x3d

    if-eq v1, v3, :cond_3c

    const/16 v8, 0x5b

    if-eq v1, v8, :cond_3b

    const/16 v8, 0x25

    if-eq v1, v8, :cond_39

    const/16 v8, 0x26

    if-eq v1, v8, :cond_36

    const/16 v8, 0x5d

    if-eq v1, v8, :cond_35

    const/16 v8, 0x5e

    if-eq v1, v8, :cond_33

    const/16 v8, 0x2a

    const/16 v9, 0x3e

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 687
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :pswitch_0
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITNOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 498
    :pswitch_1
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    :pswitch_2
    const/16 v1, 0x7c

    .line 513
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 514
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->OR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 515
    :cond_13
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 516
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 518
    :cond_14
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 496
    :pswitch_3
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 506
    :pswitch_4
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->HOOK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 582
    :pswitch_5
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 583
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 584
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 585
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 587
    :cond_15
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 589
    :cond_16
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 590
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 592
    :cond_17
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 594
    :cond_18
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 595
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->GE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 597
    :cond_19
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->GT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 537
    :pswitch_6
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 538
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 539
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SHEQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 541
    :cond_1a
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 542
    :cond_1b
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 543
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ARROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 545
    :cond_1c
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 559
    :pswitch_7
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 560
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 561
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 562
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 563
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    .line 564
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 566
    :cond_1d
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 568
    :cond_1e
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_1f
    const/16 v1, 0x3c

    .line 570
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 571
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 572
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 574
    :cond_20
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 576
    :cond_21
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 577
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 579
    :cond_22
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 490
    :pswitch_8
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SEMI:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 508
    :pswitch_9
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COLON:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    :pswitch_a
    const/16 v1, 0x2f

    .line 614
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 615
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 616
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    .line 617
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 620
    :cond_23
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 622
    iget v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v3, v3, -0x2

    iput v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 623
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_24

    :goto_6
    const/4 v3, 0x1

    goto :goto_8

    :cond_24
    :goto_7
    const/4 v3, 0x0

    .line 627
    :cond_25
    :goto_8
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v5

    if-eq v5, v2, :cond_28

    if-ne v5, v8, :cond_26

    goto :goto_6

    :cond_26
    if-ne v5, v1, :cond_27

    if-eqz v3, :cond_25

    .line 635
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 636
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 640
    :cond_27
    iget v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    goto :goto_7

    .line 629
    :cond_28
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    sub-int/2addr v1, v6

    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 630
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "unterminated comment"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_29
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 646
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 648
    :cond_2a
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 510
    :pswitch_b
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 669
    :pswitch_c
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 670
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 671
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    goto :goto_9

    .line 672
    :cond_2b
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 673
    iget-boolean v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    if-nez v1, :cond_2c

    .line 676
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 677
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    .line 678
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 681
    :cond_2c
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 683
    :cond_2d
    :goto_9
    iput-boolean v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    return-object v1

    .line 504
    :pswitch_d
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMA:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 660
    :pswitch_e
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 661
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 662
    :cond_2e
    invoke-direct {v0, v14}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 663
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 665
    :cond_2f
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 600
    :pswitch_f
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 601
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 602
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 604
    :cond_30
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 607
    :cond_31
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 608
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 610
    :cond_32
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 502
    :pswitch_10
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 500
    :pswitch_11
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 522
    :cond_33
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 523
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 525
    :cond_34
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 494
    :cond_35
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 528
    :cond_36
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 529
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->AND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 530
    :cond_37
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 531
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 533
    :cond_38
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 651
    :cond_39
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 652
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 654
    :cond_3a
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 492
    :cond_3b
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 549
    :cond_3c
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 550
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 551
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SHNE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 553
    :cond_3d
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 555
    :cond_3e
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 358
    :cond_3f
    :goto_a
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 360
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getCharIgnoreLineEnd(Z)I

    move-result v5

    :goto_b
    if-eq v5, v1, :cond_52

    const/16 v9, 0xd

    if-ne v5, v2, :cond_41

    :cond_40
    const/4 v11, 0x1

    goto :goto_d

    :cond_41
    if-ne v5, v3, :cond_43

    .line 367
    iget v11, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    if-eq v11, v3, :cond_40

    if-eq v11, v9, :cond_40

    const/16 v14, 0x2028

    if-eq v11, v14, :cond_42

    const/16 v14, 0x2029

    if-eq v11, v14, :cond_42

    goto :goto_c

    :cond_42
    move v5, v11

    :cond_43
    :goto_c
    const/4 v11, 0x0

    :goto_d
    if-nez v11, :cond_51

    if-ne v5, v8, :cond_50

    .line 390
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v5

    if-eq v5, v3, :cond_4f

    if-eq v5, v13, :cond_4e

    const/16 v11, 0x66

    if-eq v5, v11, :cond_4d

    if-eq v5, v10, :cond_4c

    const/16 v11, 0x72

    if-eq v5, v11, :cond_45

    if-eq v5, v7, :cond_49

    packed-switch v5, :pswitch_data_3

    if-gt v12, v5, :cond_46

    const/16 v9, 0x38

    if-ge v5, v9, :cond_46

    add-int/lit8 v5, v5, -0x30

    .line 464
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v11

    if-gt v12, v11, :cond_44

    if-ge v11, v9, :cond_44

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v11

    sub-int/2addr v5, v12

    .line 467
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v11

    if-gt v12, v11, :cond_44

    if-ge v11, v9, :cond_44

    const/16 v9, 0x1f

    if-gt v5, v9, :cond_44

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v11

    sub-int/2addr v5, v12

    .line 472
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v11

    :cond_44
    move v9, v5

    .line 475
    invoke-direct {v0, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    :cond_45
    :goto_e
    const/16 v11, 0x75

    goto/16 :goto_11

    :cond_46
    move v9, v5

    goto :goto_e

    :pswitch_12
    const/16 v9, 0xb

    goto :goto_e

    .line 418
    :pswitch_13
    iget v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    const/16 v11, 0x75

    .line 419
    invoke-direct {v0, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_f
    const/4 v2, 0x4

    if-eq v14, v2, :cond_48

    .line 422
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v2

    .line 423
    invoke-static {v2, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v9

    if-gez v9, :cond_47

    move v5, v2

    :goto_10
    const/4 v2, -0x1

    const/16 v16, 0x4

    goto/16 :goto_b

    .line 427
    :cond_47
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 431
    :cond_48
    iput v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    goto :goto_11

    :pswitch_14
    const/16 v11, 0x75

    const/16 v9, 0x9

    goto :goto_11

    :cond_49
    const/16 v11, 0x75

    .line 437
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v5

    .line 438
    invoke-static {v5, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v2

    if-gez v2, :cond_4a

    .line 440
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_10

    .line 444
    :cond_4a
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v9

    .line 445
    invoke-static {v9, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v2

    if-gez v2, :cond_4b

    .line 447
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 448
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    move v5, v9

    goto :goto_10

    :cond_4b
    move v9, v2

    goto :goto_11

    :cond_4c
    const/16 v11, 0x75

    const/16 v9, 0xa

    goto :goto_11

    :cond_4d
    const/16 v11, 0x75

    const/16 v9, 0xc

    goto :goto_11

    :cond_4e
    const/16 v11, 0x75

    const/16 v9, 0x8

    goto :goto_11

    :cond_4f
    const/16 v11, 0x75

    .line 458
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v5

    goto :goto_10

    :cond_50
    const/16 v11, 0x75

    move v9, v5

    .line 480
    :goto_11
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 481
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(Z)I

    move-result v5

    goto :goto_10

    .line 383
    :cond_51
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "unterminated string literal"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_52
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    if-ne v1, v15, :cond_53

    .line 485
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TEMPLATE_LITERAL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    :cond_53
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->STRING:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 262
    :cond_54
    :goto_12
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    const/16 v2, 0x10

    if-ne v1, v12, :cond_59

    .line 267
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-eq v1, v7, :cond_5c

    const/16 v7, 0x58

    if-ne v1, v7, :cond_55

    goto :goto_16

    :cond_55
    const/16 v7, 0x6f

    if-eq v1, v7, :cond_5b

    const/16 v7, 0x4f

    if-ne v1, v7, :cond_56

    goto :goto_15

    :cond_56
    if-eq v1, v13, :cond_5a

    const/16 v7, 0x42

    if-ne v1, v7, :cond_57

    goto :goto_14

    .line 277
    :cond_57
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v7

    if-eqz v7, :cond_58

    const/4 v4, 0x1

    :goto_13
    const/16 v6, 0x8

    goto :goto_17

    .line 281
    :cond_58
    invoke-direct {v0, v12}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    :cond_59
    const/16 v6, 0xa

    goto :goto_17

    .line 276
    :cond_5a
    :goto_14
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    const/4 v6, 0x2

    goto :goto_17

    .line 273
    :cond_5b
    :goto_15
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    goto :goto_13

    .line 270
    :cond_5c
    :goto_16
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    const/16 v6, 0x10

    .line 285
    :goto_17
    iget v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    const/4 v8, -0x2

    .line 286
    const-string v9, "number format error"

    if-eq v6, v3, :cond_61

    if-eq v6, v2, :cond_61

    const/16 v2, 0x8

    if-ne v6, v2, :cond_5d

    if-eqz v4, :cond_61

    :cond_5d
    const/4 v2, 0x2

    if-ne v6, v2, :cond_5e

    goto :goto_19

    .line 292
    :cond_5e
    :goto_18
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_62

    const/16 v2, 0x38

    if-lt v1, v2, :cond_60

    .line 303
    invoke-direct {v0, v3, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    move-result v1

    if-eq v1, v8, :cond_5f

    const/16 v6, 0xa

    goto :goto_1a

    .line 305
    :cond_5f
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v9}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_60
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 310
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    goto :goto_18

    .line 287
    :cond_61
    :goto_19
    invoke-direct {v0, v6, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    move-result v1

    if-eq v1, v8, :cond_6f

    .line 313
    :cond_62
    :goto_1a
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    if-ne v2, v7, :cond_64

    if-ne v6, v3, :cond_63

    goto :goto_1b

    .line 314
    :cond_63
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v9}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_64
    :goto_1b
    if-ne v1, v10, :cond_65

    .line 318
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    goto :goto_1d

    :cond_65
    if-ne v6, v3, :cond_6e

    const/16 v2, 0x45

    const/16 v3, 0x65

    if-eq v1, v15, :cond_66

    if-eq v1, v3, :cond_66

    if-ne v1, v2, :cond_6e

    :cond_66
    if-ne v1, v15, :cond_68

    .line 321
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 322
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    .line 323
    invoke-direct {v0, v6, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    move-result v1

    if-eq v1, v8, :cond_67

    goto :goto_1c

    .line 325
    :cond_67
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v9}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    :goto_1c
    if-eq v1, v3, :cond_69

    if-ne v1, v2, :cond_6e

    .line 329
    :cond_69
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 330
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-eq v1, v14, :cond_6a

    if-ne v1, v5, :cond_6b

    .line 332
    :cond_6a
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 333
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    .line 335
    :cond_6b
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 338
    invoke-direct {v0, v6, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    move-result v1

    if-eq v1, v8, :cond_6c

    goto :goto_1d

    .line 340
    :cond_6c
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v9}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_6d
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "missing exponent"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_6e
    :goto_1d
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 345
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 346
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NUMBER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v1

    .line 289
    :cond_6f
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v9}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x74
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public nextToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 2

    .line 951
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    .line 952
    :goto_0
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    .line 953
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    goto :goto_0
.end method

.method readRegExp(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)V
    .locals 8

    .line 786
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    const/4 v1, 0x0

    .line 787
    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 788
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    const/4 v3, 0x1

    const-string v4, "msg.unterminated.re.lit"

    if-ne p1, v2, :cond_0

    const/16 p1, 0x3d

    .line 790
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_0

    .line 792
    :cond_0
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq p1, v2, :cond_1

    .line 793
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 795
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->peekChar()I

    move-result p1

    const/16 v2, 0x2a

    if-eq p1, v2, :cond_b

    :goto_0
    const/4 p1, 0x0

    .line 803
    :goto_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v2

    const/16 v5, 0x2f

    const/4 v6, -0x1

    if-ne v2, v5, :cond_5

    if-eqz p1, :cond_2

    goto :goto_3

    .line 822
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getCharIgnoreLineEnd()I

    move-result p1

    .line 823
    const-string v1, "gimysu"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 824
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_2

    .line 825
    :cond_3
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isAlpha(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 828
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 833
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    return-void

    .line 826
    :cond_4
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "msg.invalid.re.flag"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    const/16 v5, 0xa

    if-eq v2, v5, :cond_a

    if-eq v2, v6, :cond_a

    const/16 v7, 0x5c

    if-ne v2, v7, :cond_7

    .line 808
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 809
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v2

    if-eq v2, v5, :cond_6

    if-eq v2, v6, :cond_6

    goto :goto_4

    .line 811
    :cond_6
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p1, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_9

    const/4 p1, 0x0

    .line 818
    :cond_9
    :goto_4
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_1

    .line 805
    :cond_a
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p1, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 796
    :cond_b
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 797
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p1, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
