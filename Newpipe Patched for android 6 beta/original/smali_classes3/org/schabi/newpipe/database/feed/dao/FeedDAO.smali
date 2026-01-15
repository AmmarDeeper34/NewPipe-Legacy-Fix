.class public abstract Lorg/schabi/newpipe/database/feed/dao/FeedDAO;
.super Ljava/lang/Object;
.source "FeedDAO.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllOutdated(Lj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getAllOutdatedForGroup(JLj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getOutdatedWithNotificationMode(Lj$/time/OffsetDateTime;I)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getStreams(JZZLj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Maybe;
.end method

.method public abstract insertAll(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract insertLastUpdated$app_release(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)J
.end method

.method public abstract notLoadedCount()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract notLoadedCountForGroup(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract oldestSubscriptionUpdate(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract oldestSubscriptionUpdateFromAll()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public setLastUpdatedForSubscription(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V
    .locals 5

    const-string v0, "lastUpdatedEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->insertLastUpdated$app_release(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->updateLastUpdated$app_release(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    :cond_0
    return-void
.end method

.method public abstract unlinkOldLivestreams(J)V
.end method

.method public abstract unlinkStreamsOlderThan(Lj$/time/OffsetDateTime;)V
.end method

.method public abstract updateLastUpdated$app_release(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V
.end method
