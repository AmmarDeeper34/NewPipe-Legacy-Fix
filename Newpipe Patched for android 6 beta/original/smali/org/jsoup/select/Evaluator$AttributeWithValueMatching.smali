.class public final Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributeWithValueMatching"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final pattern:Lorg/jsoup/helper/Regex;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jsoup/helper/Regex;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 391
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    .line 392
    iput-object p2, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Lorg/jsoup/helper/Regex;

    return-void
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 0
    const/16 v0, 0x8

    return v0
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 1

    .line 401
    iget-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Lorg/jsoup/helper/Regex;

    iget-object v0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/helper/Regex;->matcher(Ljava/lang/CharSequence;)Lorg/jsoup/helper/Regex$Matcher;

    move-result-object p1

    invoke-interface {p1}, Lorg/jsoup/helper/Regex$Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 410
    iget-object v0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Lorg/jsoup/helper/Regex;

    invoke-virtual {v1}, Lorg/jsoup/helper/Regex;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "[%s~=%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
