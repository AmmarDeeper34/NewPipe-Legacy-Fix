.class public abstract Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;
.super Ljava/lang/Object;
.source "FeedGroupDAO.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(J)I
.end method

.method public abstract deleteSubscriptionsFromGroup(J)I
.end method

.method public abstract getAll()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getGroup(J)Lio/reactivex/rxjava3/core/Maybe;
.end method

.method public abstract getSubscriptionIdsFor(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public insert(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)J
    .locals 2

    const-string v0, "feedGroupEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->nextSortOrder()J

    move-result-wide v0

    .line 26
    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->setSortOrder(J)V

    .line 27
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->insertInternal(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract insertInternal(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)J
.end method

.method public abstract insertSubscriptionsToGroup(Ljava/util/List;)Ljava/util/List;
.end method

.method protected abstract nextSortOrder()J
.end method

.method public abstract update(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)I
.end method

.method public abstract updateOrder(JJ)I
.end method

.method public updateOrder(Ljava/util/Map;)V
    .locals 5

    const-string v0, "orderMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 56
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->updateOrder(JJ)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSubscriptionsForGroup(JLjava/util/List;)V
    .locals 4

    const-string v0, "subscriptionIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->deleteSubscriptionsFromGroup(J)I

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 51
    new-instance v3, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;

    invoke-direct {v3, p1, p2, v1, v2}, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;-><init>(JJ)V

    .line 1635
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->insertSubscriptionsToGroup(Ljava/util/List;)Ljava/util/List;

    return-void
.end method
