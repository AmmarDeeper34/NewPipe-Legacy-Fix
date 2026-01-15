.class Lorg/jsoup/parser/Token$Character;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Character"
.end annotation


# static fields
.field private static final nullString:Ljava/lang/String;


# instance fields
.field final data:Lorg/jsoup/parser/TokenData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/Token$Character;->nullString:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 381
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/Token$1;)V

    .line 378
    new-instance v0, Lorg/jsoup/parser/TokenData;

    invoke-direct {v0}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    return-void
.end method

.method constructor <init>(Lorg/jsoup/parser/Token$Character;)V
    .locals 2

    .line 386
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/Token$1;)V

    .line 378
    new-instance v0, Lorg/jsoup/parser/TokenData;

    invoke-direct {v0}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    .line 387
    iget v1, p1, Lorg/jsoup/parser/Token;->startPos:I

    iput v1, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 388
    iget v1, p1, Lorg/jsoup/parser/Token;->endPos:I

    iput v1, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 389
    iget-object p1, p1, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->set(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method append(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    return-object p0
.end method

.method data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->set(Ljava/lang/String;)V

    return-object p0
.end method

.method getData()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public normalizeNulls(Z)V
    .locals 4

    .line 422
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0xfffd

    .line 426
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 427
    :cond_1
    sget-object p1, Lorg/jsoup/parser/Token$Character;->nullString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 428
    :goto_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->set(Ljava/lang/String;)V

    return-void
.end method

.method reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 394
    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    .line 395
    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 415
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
