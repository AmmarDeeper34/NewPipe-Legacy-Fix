.class Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;
.super Ljava/lang/Object;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookBehind"
.end annotation


# instance fields
.field private final list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 69
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    return-void
.end method


# virtual methods
.method one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method oneIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v2, v1, v0

    .line 76
    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method three()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method twoIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
