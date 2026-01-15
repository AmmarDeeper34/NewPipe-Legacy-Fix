.class Lorg/mozilla/javascript/optimizer/Block$FatBlock;
.super Ljava/lang/Object;
.source "Block.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/optimizer/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FatBlock"
.end annotation


# instance fields
.field private final predecessors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/mozilla/javascript/optimizer/Block$FatBlock;",
            ">;"
        }
    .end annotation
.end field

.field realBlock:Lorg/mozilla/javascript/optimizer/Block;

.field private final successors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/mozilla/javascript/optimizer/Block$FatBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/optimizer/Block-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;-><init>()V

    return-void
.end method

.method private static reduceToArray(Ljava/util/Set;)[Lorg/mozilla/javascript/optimizer/Block;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/mozilla/javascript/optimizer/Block$FatBlock;",
            ">;)[",
            "Lorg/mozilla/javascript/optimizer/Block;"
        }
    .end annotation

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/javascript/optimizer/Block;

    .line 28
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    add-int/lit8 v3, v1, 0x1

    .line 29
    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getPredecessors()[Lorg/mozilla/javascript/optimizer/Block;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Ljava/util/HashSet;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->reduceToArray(Ljava/util/Set;)[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v0

    return-object v0
.end method

.method getSuccessors()[Lorg/mozilla/javascript/optimizer/Block;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Ljava/util/HashSet;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->reduceToArray(Ljava/util/Set;)[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v0

    return-object v0
.end method
