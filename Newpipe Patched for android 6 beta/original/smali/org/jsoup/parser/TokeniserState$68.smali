.class final enum Lorg/jsoup/parser/TokeniserState$68;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1647
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 3

    .line 1649
    const-string v0, "]]>"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1650
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1652
    :cond_1
    :goto_0
    new-instance p2, Lorg/jsoup/parser/Token$CData;

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/jsoup/parser/Token$CData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 1653
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method
