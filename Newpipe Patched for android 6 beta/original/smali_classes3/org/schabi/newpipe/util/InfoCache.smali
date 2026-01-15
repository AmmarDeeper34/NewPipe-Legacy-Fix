.class public final Lorg/schabi/newpipe/util/InfoCache;
.super Ljava/lang/Object;
.source "InfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/util/InfoCache$Type;,
        Lorg/schabi/newpipe/util/InfoCache$CacheData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INSTANCE:Lorg/schabi/newpipe/util/InfoCache;

.field private static final LRU_CACHE:Landroidx/collection/LruCache;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/util/InfoCache;->DEBUG:Z

    .line 37
    new-instance v0, Lorg/schabi/newpipe/util/InfoCache;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/InfoCache;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache;->INSTANCE:Lorg/schabi/newpipe/util/InfoCache;

    .line 44
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lorg/schabi/newpipe/util/InfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/util/InfoCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Info;
    .locals 4

    .line 84
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/util/InfoCache$CacheData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 89
    :cond_0
    invoke-static {v1}, Lorg/schabi/newpipe/util/InfoCache$CacheData;->-$$Nest$misExpired(Lorg/schabi/newpipe/util/InfoCache$CacheData;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 94
    :cond_1
    invoke-static {v1}, Lorg/schabi/newpipe/util/InfoCache$CacheData;->-$$Nest$fgetinfo(Lorg/schabi/newpipe/util/InfoCache$CacheData;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lorg/schabi/newpipe/util/InfoCache;
    .locals 1

    .line 63
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->INSTANCE:Lorg/schabi/newpipe/util/InfoCache;

    return-object v0
.end method

.method private static keyOf(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Ljava/lang/String;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeStaleCache()V
    .locals 3

    .line 74
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/util/InfoCache$CacheData;

    if-eqz v2, :cond_0

    .line 76
    invoke-static {v2}, Lorg/schabi/newpipe/util/InfoCache$CacheData;->-$$Nest$misExpired(Lorg/schabi/newpipe/util/InfoCache$CacheData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 138
    sget-boolean v0, Lorg/schabi/newpipe/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/util/InfoCache;->TAG:Ljava/lang/String;

    const-string v1, "clearCache() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFromKey(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Lorg/schabi/newpipe/extractor/Info;
    .locals 3

    .line 101
    sget-boolean v0, Lorg/schabi/newpipe/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/schabi/newpipe/util/InfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromKey() called with: serviceId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], url = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/util/InfoCache;->keyOf(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/InfoCache;->getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putInfo(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/util/InfoCache$Type;)V
    .locals 5

    .line 114
    sget-boolean v0, Lorg/schabi/newpipe/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/util/InfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putInfo() called with: info = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getCacheExpirationMillis(I)J

    move-result-wide v0

    .line 119
    sget-object v2, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v2

    .line 120
    :try_start_0
    new-instance v3, Lorg/schabi/newpipe/util/InfoCache$CacheData;

    const/4 v4, 0x0

    invoke-direct {v3, p3, v0, v1, v4}, Lorg/schabi/newpipe/util/InfoCache$CacheData;-><init>(Lorg/schabi/newpipe/extractor/Info;JLorg/schabi/newpipe/util/InfoCache-IA;)V

    .line 121
    invoke-static {p1, p2, p4}, Lorg/schabi/newpipe/util/InfoCache;->keyOf(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeInfo(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)V
    .locals 3

    .line 128
    sget-boolean v0, Lorg/schabi/newpipe/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/schabi/newpipe/util/InfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeInfo() called with: serviceId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], url = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/util/InfoCache;->keyOf(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public trimCache()V
    .locals 2

    .line 147
    sget-boolean v0, Lorg/schabi/newpipe/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/schabi/newpipe/util/InfoCache;->TAG:Ljava/lang/String;

    const-string v1, "trimCache() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->removeStaleCache()V

    const/16 v1, 0x1e

    .line 152
    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
