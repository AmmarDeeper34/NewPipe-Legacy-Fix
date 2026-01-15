.class public abstract Lorg/jsoup/select/Evaluator;
.super Ljava/lang/Object;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/Evaluator$MatchText;,
        Lorg/jsoup/select/Evaluator$MatchesWholeOwnText;,
        Lorg/jsoup/select/Evaluator$MatchesWholeText;,
        Lorg/jsoup/select/Evaluator$MatchesOwn;,
        Lorg/jsoup/select/Evaluator$Matches;,
        Lorg/jsoup/select/Evaluator$ContainsOwnText;,
        Lorg/jsoup/select/Evaluator$ContainsData;,
        Lorg/jsoup/select/Evaluator$ContainsWholeOwnText;,
        Lorg/jsoup/select/Evaluator$ContainsWholeText;,
        Lorg/jsoup/select/Evaluator$ContainsText;,
        Lorg/jsoup/select/Evaluator$IndexEvaluator;,
        Lorg/jsoup/select/Evaluator$IsEmpty;,
        Lorg/jsoup/select/Evaluator$IsOnlyOfType;,
        Lorg/jsoup/select/Evaluator$IsOnlyChild;,
        Lorg/jsoup/select/Evaluator$IsRoot;,
        Lorg/jsoup/select/Evaluator$IsFirstChild;,
        Lorg/jsoup/select/Evaluator$IsNthLastOfType;,
        Lorg/jsoup/select/Evaluator$IsNthOfType;,
        Lorg/jsoup/select/Evaluator$IsNthLastChild;,
        Lorg/jsoup/select/Evaluator$IsNthChild;,
        Lorg/jsoup/select/Evaluator$CssNthEvaluator;,
        Lorg/jsoup/select/Evaluator$IsLastOfType;,
        Lorg/jsoup/select/Evaluator$IsFirstOfType;,
        Lorg/jsoup/select/Evaluator$IsLastChild;,
        Lorg/jsoup/select/Evaluator$IndexEquals;,
        Lorg/jsoup/select/Evaluator$IndexGreaterThan;,
        Lorg/jsoup/select/Evaluator$IndexLessThan;,
        Lorg/jsoup/select/Evaluator$AllElements;,
        Lorg/jsoup/select/Evaluator$AttributeKeyPair;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueNot;,
        Lorg/jsoup/select/Evaluator$AttributeWithValue;,
        Lorg/jsoup/select/Evaluator$AttributeStarting;,
        Lorg/jsoup/select/Evaluator$Attribute;,
        Lorg/jsoup/select/Evaluator$Class;,
        Lorg/jsoup/select/Evaluator$Id;,
        Lorg/jsoup/select/Evaluator$TagEndsWith;,
        Lorg/jsoup/select/Evaluator$TagStartsWith;,
        Lorg/jsoup/select/Evaluator$Tag;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$W_TgaPgP8Ulm1NCByZe383k6JKI(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gwnLs3gZc0AIhdmCiMqjTqt5tTI(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method asNodePredicate(Lorg/jsoup/nodes/Element;)Ljava/util/function/Predicate;
    .locals 1

    .line 46
    new-instance v0, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda0;-><init>(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method

.method public asPredicate(Lorg/jsoup/nodes/Element;)Ljava/util/function/Predicate;
    .locals 1

    .line 42
    new-instance v0, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda1;-><init>(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method

.method protected cost()I
    .locals 1

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public abstract matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
.end method

.method matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 1

    .line 60
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 61
    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    instance-of v0, p2, Lorg/jsoup/nodes/LeafNode;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->wantsNodes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    check-cast p2, Lorg/jsoup/nodes/LeafNode;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected reset()V
    .locals 0

    .line 0
    return-void
.end method

.method wantsNodes()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
