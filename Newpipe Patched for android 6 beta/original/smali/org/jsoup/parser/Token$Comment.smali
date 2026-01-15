.class final Lorg/jsoup/parser/Token$Comment;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Comment"
.end annotation


# instance fields
.field bogus:Z

.field private final data:Lorg/jsoup/parser/TokenData;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 354
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/Token$1;)V

    .line 342
    new-instance v0, Lorg/jsoup/parser/TokenData;

    invoke-direct {v0}, Lorg/jsoup/parser/TokenData;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Lorg/jsoup/parser/TokenData;

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    return-void
.end method


# virtual methods
.method append(C)Lorg/jsoup/parser/Token$Comment;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->append(C)V

    return-object p0
.end method

.method append(Ljava/lang/String;)Lorg/jsoup/parser/Token$Comment;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    return-object p0
.end method

.method getData()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 347
    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    .line 348
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
