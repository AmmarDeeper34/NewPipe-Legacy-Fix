.class Lorg/jsoup/select/NodeEvaluator$BlankValue;
.super Lorg/jsoup/select/NodeEvaluator;
.source "NodeEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/NodeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlankValue"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/jsoup/select/NodeEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 0
    const/4 v0, 0x4

    return v0
.end method

.method evaluateMatch(Lorg/jsoup/nodes/Node;)Z
    .locals 0

    .line 85
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, ":blank"

    return-object v0
.end method
