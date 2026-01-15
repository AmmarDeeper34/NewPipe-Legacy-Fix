.class public abstract Lorg/schabi/newpipe/database/stream/dao/StreamDAO;
.super Ljava/lang/Object;
.source "StreamDAO.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/BasicDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final compareAndUpdateStream(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V
    .locals 6

    .line 89
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->getMinimalStreamForCompare$app_release(ILjava/lang/String;)Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->getUid()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setUid(J)V

    .line 93
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 99
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->getUploadDate()Lj$/time/OffsetDateTime;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 100
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->getUploadDate()Lj$/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setUploadDate(Lj$/time/OffsetDateTime;)V

    .line 101
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setTextualUploadDate(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->isUploadDateApproximation()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setUploadDateApproximation(Ljava/lang/Boolean;)V

    .line 105
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 106
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setDuration(J)V

    :cond_2
    return-void

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Stream cannot be null just after insertion."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract deleteOrphans()I
.end method

.method public abstract exists$app_release(ILjava/lang/String;)Z
.end method

.method public abstract getMinimalStreamForCompare$app_release(ILjava/lang/String;)Lorg/schabi/newpipe/database/stream/dao/StreamDAO$StreamCompareFeed;
.end method

.method public abstract getStream(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract silentInsertAllInternal$app_release(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract silentInsertInternal$app_release(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J
.end method

.method public upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J
    .locals 5

    const-string v0, "newerStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->silentInsertInternal$app_release(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setUid(J)V

    return-wide v0

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->compareAndUpdateStream(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V

    .line 63
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    .line 64
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v0

    return-wide v0
.end method

.method public upsertAll(Ljava/util/List;)Ljava/util/List;
    .locals 9

    const-string v0, "streams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->silentInsertAllInternal$app_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 73
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 75
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v2, v4, v5}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->setUid(J)V

    goto :goto_1

    .line 80
    :cond_0
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->compareAndUpdateStream(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V

    .line 81
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v2, v3

    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/util/Collection;)V

    return-object v1
.end method
