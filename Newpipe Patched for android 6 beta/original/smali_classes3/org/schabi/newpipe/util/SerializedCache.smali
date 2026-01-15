.class public final Lorg/schabi/newpipe/util/SerializedCache;
.super Ljava/lang/Object;
.source "SerializedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/util/SerializedCache$CacheData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INSTANCE:Lorg/schabi/newpipe/util/SerializedCache;

.field private static final LRU_CACHE:Landroidx/collection/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/util/SerializedCache;->DEBUG:Z

    .line 20
    new-instance v0, Lorg/schabi/newpipe/util/SerializedCache;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/SerializedCache;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/util/SerializedCache;->INSTANCE:Lorg/schabi/newpipe/util/SerializedCache;

    .line 22
    new-instance v0, Landroidx/collection/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lorg/schabi/newpipe/util/SerializedCache;->LRU_CACHE:Landroidx/collection/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clone(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 2

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 106
    new-instance p1, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    return-object p1

    :catchall_0
    move-exception p1

    .line 102
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static getInstance()Lorg/schabi/newpipe/util/SerializedCache;
    .locals 1

    .line 31
    sget-object v0, Lorg/schabi/newpipe/util/SerializedCache;->INSTANCE:Lorg/schabi/newpipe/util/SerializedCache;

    return-object v0
.end method

.method private getItem(Lorg/schabi/newpipe/util/SerializedCache$CacheData;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-static {p1}, Lorg/schabi/newpipe/util/SerializedCache$CacheData;->-$$Nest$fgettype(Lorg/schabi/newpipe/util/SerializedCache$CacheData;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/schabi/newpipe/util/SerializedCache$CacheData;->-$$Nest$fgetitem(Lorg/schabi/newpipe/util/SerializedCache$CacheData;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public put(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0, p1, p2}, Lorg/schabi/newpipe/util/SerializedCache;->put(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Z
    .locals 3

    .line 64
    sget-boolean v0, Lorg/schabi/newpipe/util/SerializedCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "SerializedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put() called with: key = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], item = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/SerializedCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 69
    :try_start_0
    new-instance v1, Lorg/schabi/newpipe/util/SerializedCache$CacheData;

    invoke-direct {p0, p2, p3}, Lorg/schabi/newpipe/util/SerializedCache;->clone(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lorg/schabi/newpipe/util/SerializedCache$CacheData;-><init>(Ljava/lang/Object;Ljava/lang/Class;Lorg/schabi/newpipe/util/SerializedCache-IA;)V

    invoke-virtual {v0, p1, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 70
    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    const-string p2, "SerializedCache"

    const-string p3, "Serialization failed for: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public take(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 36
    sget-boolean v0, Lorg/schabi/newpipe/util/SerializedCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "SerializedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "take() called with: key = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/SerializedCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/util/SerializedCache$CacheData;

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/util/SerializedCache;->getItem(Lorg/schabi/newpipe/util/SerializedCache$CacheData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
