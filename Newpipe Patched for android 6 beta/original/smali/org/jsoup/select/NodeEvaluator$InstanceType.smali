.class Lorg/jsoup/select/NodeEvaluator$InstanceType;
.super Lorg/jsoup/select/NodeEvaluator;
.source "NodeEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/NodeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceType"
.end annotation


# instance fields
.field final selector:Ljava/lang/String;

.field final type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/jsoup/select/NodeEvaluator;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jsoup/select/NodeEvaluator$InstanceType;->type:Ljava/lang/Class;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/select/NodeEvaluator$InstanceType;->selector:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method evaluateMatch(Lorg/jsoup/nodes/Node;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jsoup/select/NodeEvaluator$InstanceType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/jsoup/select/NodeEvaluator$InstanceType;->selector:Ljava/lang/String;

    return-object v0
.end method
