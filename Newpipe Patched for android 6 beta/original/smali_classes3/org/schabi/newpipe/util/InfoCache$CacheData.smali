.class final Lorg/schabi/newpipe/util/InfoCache$CacheData;
.super Ljava/lang/Object;
.source "InfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/InfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheData"
.end annotation


# instance fields
.field private final expireTimestamp:J

.field private final info:Lorg/schabi/newpipe/extractor/Info;


# direct methods
.method static bridge synthetic -$$Nest$fgetinfo(Lorg/schabi/newpipe/util/InfoCache$CacheData;)Lorg/schabi/newpipe/extractor/Info;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/util/InfoCache$CacheData;->info:Lorg/schabi/newpipe/extractor/Info;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misExpired(Lorg/schabi/newpipe/util/InfoCache$CacheData;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/util/InfoCache$CacheData;->isExpired()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lorg/schabi/newpipe/extractor/Info;J)V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/schabi/newpipe/util/InfoCache$CacheData;->expireTimestamp:J

    .line 168
    iput-object p1, p0, Lorg/schabi/newpipe/util/InfoCache$CacheData;->info:Lorg/schabi/newpipe/extractor/Info;

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/extractor/Info;JLorg/schabi/newpipe/util/InfoCache-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/util/InfoCache$CacheData;-><init>(Lorg/schabi/newpipe/extractor/Info;J)V

    return-void
.end method

.method private isExpired()Z
    .locals 5

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/schabi/newpipe/util/InfoCache$CacheData;->expireTimestamp:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
