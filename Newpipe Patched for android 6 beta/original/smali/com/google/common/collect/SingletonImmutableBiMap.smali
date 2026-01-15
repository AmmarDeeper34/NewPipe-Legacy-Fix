.class final Lcom/google/common/collect/SingletonImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SingletonImmutableBiMap.java"


# instance fields
.field private final transient inverse:Lcom/google/common/collect/ImmutableBiMap;

.field private transient lazyInverse:Lcom/google/common/collect/ImmutableBiMap;

.field final transient singleKey:Ljava/lang/Object;

.field final transient singleValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 43
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    .line 52
    iput-object p3, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 68
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    if-eqz v0, :cond_0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->lazyInverse:Lcom/google/common/collect/ImmutableBiMap;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/google/common/collect/SingletonImmutableBiMap;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->lazyInverse:Lcom/google/common/collect/ImmutableBiMap;

    :cond_1
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
