.class abstract Lorg/jsoup/select/NodeEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "NodeEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/NodeEvaluator$MatchesValue;,
        Lorg/jsoup/select/NodeEvaluator$BlankValue;,
        Lorg/jsoup/select/NodeEvaluator$ContainsValue;,
        Lorg/jsoup/select/NodeEvaluator$InstanceType;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method abstract evaluateMatch(Lorg/jsoup/nodes/Node;)Z
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    .line 16
    invoke-virtual {p0, p2}, Lorg/jsoup/select/NodeEvaluator;->evaluateMatch(Lorg/jsoup/nodes/Node;)Z

    move-result p1

    return p1
.end method

.method matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z
    .locals 0

    .line 20
    invoke-virtual {p0, p2}, Lorg/jsoup/select/NodeEvaluator;->evaluateMatch(Lorg/jsoup/nodes/Node;)Z

    move-result p1

    return p1
.end method

.method wantsNodes()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
