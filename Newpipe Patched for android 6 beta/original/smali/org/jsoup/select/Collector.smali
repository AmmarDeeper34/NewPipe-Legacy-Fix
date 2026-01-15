.class public abstract Lorg/jsoup/select/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# direct methods
.method public static collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->wantsNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-class v0, Lorg/jsoup/nodes/Element;

    invoke-static {p0, p1, v0}, Lorg/jsoup/select/Collector;->streamNodes(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Lj$/util/stream/Stream;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0, p1}, Lorg/jsoup/select/Collector;->stream(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 34
    :goto_0
    new-instance v0, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/select/Elements;

    .line 35
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    return-object p1
.end method

.method public static findFirst(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 76
    invoke-static {p0, p1}, Lorg/jsoup/select/Collector;->stream(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 77
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    return-object p1
.end method

.method public static stream(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 49
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->stream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jsoup/select/Evaluator;->asPredicate(Lorg/jsoup/nodes/Element;)Ljava/util/function/Predicate;

    move-result-object p0

    invoke-interface {v0, p0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static streamNodes(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Lj$/util/stream/Stream;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 65
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->nodeStream(Ljava/lang/Class;)Lj$/util/stream/Stream;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/jsoup/select/Evaluator;->asNodePredicate(Lorg/jsoup/nodes/Element;)Ljava/util/function/Predicate;

    move-result-object p0

    invoke-interface {p2, p0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
