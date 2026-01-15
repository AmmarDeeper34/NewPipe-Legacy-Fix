.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.kt"


# instance fields
.field private final database:Lorg/schabi/newpipe/database/AppDatabase;

.field private final feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field private final subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;


# direct methods
.method public static synthetic $r8$lambda$Y3oHX-1CZmJQtyPBJ4jicRmQMiY(Ljava/util/List;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->upsertAll$lambda$1(Ljava/util/List;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$unpLwFscGuLeJKXmV7qYDbhJyiU(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;ILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->deleteSubscription$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 25
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    .line 26
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    return-void
.end method

.method public static final synthetic access$getDatabase$p(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;)Lorg/schabi/newpipe/database/AppDatabase;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionTable$p(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;)Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    return-object p0
.end method

.method public static final synthetic access$rememberAllStreams(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/Completable;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->rememberAllStreams(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    return-object p0
.end method

.method private static final deleteSubscription$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;ILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 115
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->deleteSubscription(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final rememberAllStreams(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/Completable;
    .locals 3

    .line 134
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 135
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$1;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$1;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 138
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$2;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$2;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 139
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->flatMapCompletable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->onErrorComplete()Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string v0, "onErrorComplete(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final upsertAll$lambda$1(Ljava/util/List;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V
    .locals 11

    .line 1879
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Landroid/util/Pair;

    .line 58
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, "second"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 59
    iget-object v4, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 60
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {v5}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUid()J

    move-result-wide v5

    .line 61
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v3

    const-string v7, "getRelatedItems(...)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    if-eqz v9, :cond_1

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 59
    invoke-static/range {v4 .. v10}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->upsertAll$default(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;Lj$/time/OffsetDateTime;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final deleteSubscription(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 116
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 117
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string p2, "observeOn(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final deleteSubscription(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 1

    const-string v0, "subscriptionEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public final getSubscriptions(JLjava/lang/String;Z)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    const-string v0, "filterQuery"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p4, :cond_0

    .line 39
    iget-object p4, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-virtual {p4, p1, p2, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscriptionsOnlyUngroupedFiltered(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscriptionsFiltered(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p4, :cond_2

    .line 46
    iget-object p3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-virtual {p3, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscriptionsOnlyUngrouped(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    .line 47
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final insertSubscription(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 1

    const-string v0, "subscriptionEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method public final subscriptionTable()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    return-object v0
.end method

.method public final subscriptions()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final updateChannelInfo(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lio/reactivex/rxjava3/core/Completable;
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getUrl(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscription(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    .line 72
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->flatMapCompletable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 71
    const-string v0, "flatMapCompletable(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateFromInfo(Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscription(J)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setAvatarUrl(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setDescription(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getSubscriberCount()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setSubscriberCount(Ljava/lang/Long;)V

    .line 111
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    invoke-interface {p1, v0}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    return-void
.end method

.method public final updateNotificationMode(ILjava/lang/String;I)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->getSubscription(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 86
    new-instance p2, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;

    invoke-direct {p2, p3, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;-><init>(ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->flatMapCompletable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string p2, "flatMapCompletable(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final upsertAll(Ljava/util/List;)Ljava/util/List;
    .locals 6

    const-string v0, "infoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Landroid/util/Pair;

    .line 53
    sget-object v4, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->Companion:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v5, "first"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {v4, v3}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity$Companion;->from(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object v3

    .line 1635
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->upsertAll(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v2, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-object v0
.end method
