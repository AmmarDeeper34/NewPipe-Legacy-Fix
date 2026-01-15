.class public abstract Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;
.super Ljava/lang/Object;
.source "SubscriptionDAO.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/BasicDAO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteSubscription(ILjava/lang/String;)I
.end method

.method public abstract getAll()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getSubscription(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;
.end method

.method public abstract getSubscription(J)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
.end method

.method public abstract getSubscriptionFlowable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getSubscriptionIdInternal$app_release(ILjava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getSubscriptionsFiltered(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getSubscriptionsOnlyUngrouped(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getSubscriptionsOnlyUngroupedFiltered(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract silentInsertAllInternal$app_release(Ljava/util/List;)Ljava/util/List;
.end method

.method public upsertAll(Ljava/util/List;)Ljava/util/List;
    .locals 8

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->silentInsertAllInternal$app_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1879
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 97
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v1, v4, v5}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setUid(J)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result v2

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v4}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscriptionIdInternal$app_release(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 104
    invoke-virtual {v1, v4, v5}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setUid(J)V

    .line 106
    invoke-interface {p0, v1}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    :goto_1
    move v1, v3

    goto :goto_0

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Subscription cannot be null just after insertion."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p1
.end method
