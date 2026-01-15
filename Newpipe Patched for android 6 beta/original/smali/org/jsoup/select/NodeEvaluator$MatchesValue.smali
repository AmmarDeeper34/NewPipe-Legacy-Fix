.class Lorg/jsoup/select/NodeEvaluator$MatchesValue;
.super Lorg/jsoup/select/NodeEvaluator;
.source "NodeEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/NodeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchesValue"
.end annotation


# instance fields
.field private final pattern:Lorg/jsoup/helper/Regex;


# direct methods
.method protected constructor <init>(Lorg/jsoup/helper/Regex;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/jsoup/select/NodeEvaluator;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/jsoup/select/NodeEvaluator$MatchesValue;->pattern:Lorg/jsoup/helper/Regex;

    return-void
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 0
    const/16 v0, 0x8

    return v0
.end method

.method evaluateMatch(Lorg/jsoup/nodes/Node;)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/jsoup/select/NodeEvaluator$MatchesValue;->pattern:Lorg/jsoup/helper/Regex;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/Regex;->matcher(Ljava/lang/CharSequence;)Lorg/jsoup/helper/Regex$Matcher;

    move-result-object p1

    invoke-interface {p1}, Lorg/jsoup/helper/Regex$Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/jsoup/select/NodeEvaluator$MatchesValue;->pattern:Lorg/jsoup/helper/Regex;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, ":matches(%s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
