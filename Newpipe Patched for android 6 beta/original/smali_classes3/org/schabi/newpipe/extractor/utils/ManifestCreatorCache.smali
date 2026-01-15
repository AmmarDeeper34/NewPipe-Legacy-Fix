.class public final Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
.super Ljava/lang/Object;
.source "ManifestCreatorCache.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clearFactor:D

.field private final concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/io/Serializable;",
            "Lorg/schabi/newpipe/extractor/utils/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private maximumSize:I


# direct methods
.method public static synthetic $r8$lambda$dgKJRGSyQryYCxjm027ZJTCLp4w(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;Ljava/util/Map$Entry;)V
    .locals 1

    .line 252
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 252
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 253
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 252
    invoke-virtual {p0, v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$zll8uLrxcfVhV6IdgZ1sR_PRGBA(ILjava/util/ArrayList;Ljava/util/Map$Entry;)V
    .locals 2

    .line 244
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 245
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p0, :cond_0

    .line 246
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 248
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Pair;->setFirst(Ljava/io/Serializable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 47
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 56
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    .line 62
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private keepNewestEntries(I)V
    .locals 3

    .line 240
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;)V

    invoke-static {v1, v2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 252
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/io/Serializable;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/io/Serializable;)Lorg/schabi/newpipe/extractor/utils/Pair;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/utils/Pair;

    return-object p1
.end method

.method public put(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 4

    .line 104
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    if-ne v0, v1, :cond_1

    int-to-double v0, v1

    .line 105
    iget-wide v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 106
    :goto_0
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 110
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 109
    invoke-virtual {v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/utils/Pair;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method

.method public setMaximumSize(I)V
    .locals 4

    if-lez p1, :cond_2

    .line 171
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    int-to-double v0, p1

    .line 172
    iget-wide v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 173
    :goto_0
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    .line 176
    :cond_1
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    return-void

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid maximum size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 225
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ManifestCreatorCache[clearFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", maximumSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", concurrentHashMap="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
