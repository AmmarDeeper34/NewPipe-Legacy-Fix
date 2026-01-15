.class public final synthetic Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/jsoup/internal/StringUtil$StringJoiner;

    check-cast p2, Lorg/jsoup/internal/StringUtil$StringJoiner;

    invoke-static {p1, p2}, Lorg/jsoup/internal/StringUtil;->$r8$lambda$cWFVKlWN0BFAQ195rUFbwZOxzno(Lorg/jsoup/internal/StringUtil$StringJoiner;Lorg/jsoup/internal/StringUtil$StringJoiner;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    move-result-object p1

    return-object p1
.end method
