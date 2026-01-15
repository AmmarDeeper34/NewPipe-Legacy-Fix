.class public final synthetic Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/jsoup/parser/CharacterReader$CharPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(C)Z
    .locals 0

    .line 0
    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->isHexDigit(C)Z

    move-result p1

    return p1
.end method
