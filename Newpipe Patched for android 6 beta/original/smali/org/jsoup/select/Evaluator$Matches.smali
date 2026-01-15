.class public final Lorg/jsoup/select/Evaluator$Matches;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Matches"
.end annotation


# instance fields
.field private final pattern:Lorg/jsoup/helper/Regex;


# direct methods
.method public constructor <init>(Lorg/jsoup/helper/Regex;)V
    .locals 0

    .line 935
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 936
    iput-object p1, p0, Lorg/jsoup/select/Evaluator$Matches;->pattern:Lorg/jsoup/helper/Regex;

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
    .locals 0

    .line 945
    iget-object p1, p0, Lorg/jsoup/select/Evaluator$Matches;->pattern:Lorg/jsoup/helper/Regex;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/helper/Regex;->matcher(Ljava/lang/CharSequence;)Lorg/jsoup/helper/Regex$Matcher;

    move-result-object p1

    invoke-interface {p1}, Lorg/jsoup/helper/Regex$Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 954
    iget-object v0, p0, Lorg/jsoup/select/Evaluator$Matches;->pattern:Lorg/jsoup/helper/Regex;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, ":matches(%s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
