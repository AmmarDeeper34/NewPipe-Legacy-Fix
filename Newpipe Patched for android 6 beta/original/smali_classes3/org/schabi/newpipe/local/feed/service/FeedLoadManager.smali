.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$Companion;,
        Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;,
        Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$Companion;

.field private static final DELAY_BETWEEN_BATCHES_MILLIS:Lkotlin/ranges/LongRange;


# instance fields
.field private final cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final context:Landroid/content/Context;

.field private final currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field private final feedResultsHolder:Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;

.field private final maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final notification:Lio/reactivex/rxjava3/core/Flowable;

.field private final notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

.field private final subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$7isLonIp-AftC0CcgTEaAMSmAEw(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->loadStreams$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ALtQUoi01YJabmp_AjF61jUPVNY(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->loadStreams$lambda$3$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BvFuSPRjHYLMmtOY2ggPSy7ojMM(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->postProcessFeed$lambda$0(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$Companion;

    .line 357
    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide/16 v1, 0x1770

    const-wide/16 v3, 0x2ee0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->DELAY_BETWEEN_BATCHES_MILLIS:Lkotlin/ranges/LongRange;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 38
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 40
    invoke-static {}, Lio/reactivex/rxjava3/processors/PublishProcessor;->create()Lio/reactivex/rxjava3/processors/PublishProcessor;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedResultsHolder:Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;

    .line 46
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notification:Lio/reactivex/rxjava3/core/Flowable;

    return-void
.end method

.method public static final synthetic access$broadcastProgress(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->broadcastProgress()V

    return-void
.end method

.method public static final synthetic access$getCancelSignal$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCurrentProgress$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getDELAY_BETWEEN_BATCHES_MILLIS$cp()Lkotlin/ranges/LongRange;
    .locals 1

    .line 35
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->DELAY_BETWEEN_BATCHES_MILLIS:Lkotlin/ranges/LongRange;

    return-object v0
.end method

.method public static final synthetic access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    return-object p0
.end method

.method public static final synthetic access$getFeedResultsHolder$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedResultsHolder:Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;

    return-object p0
.end method

.method public static final synthetic access$getMaxProgress$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getNotificationUpdater$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lio/reactivex/rxjava3/processors/PublishProcessor;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/subscription/SubscriptionManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    return-object p0
.end method

.method public static final synthetic access$loadStreams(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ZLandroid/content/SharedPreferences;)Lio/reactivex/rxjava3/core/Notification;
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->loadStreams(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ZLandroid/content/SharedPreferences;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postProcessFeed(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lio/reactivex/rxjava3/core/Completable;
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->postProcessFeed()Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    return-object p0
.end method

.method private final broadcastProgress()V
    .locals 7

    .line 144
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

    .line 145
    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    .line 146
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 147
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 145
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->postEvent(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)V

    return-void
.end method

.method private final loadStreams(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ZLandroid/content/SharedPreferences;)Lio/reactivex/rxjava3/core/Notification;
    .locals 10

    .line 157
    const-string v0, "blockingGet(...)"

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 158
    new-instance v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$loadStreams$storeOriginalErrorAndRethrow$1;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$loadStreams$storeOriginalErrorAndRethrow$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 169
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result p2

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p2

    .line 173
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/schabi/newpipe/extractor/StreamingService;->getFeedExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedExtractor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 176
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;->getInfo(Lorg/schabi/newpipe/extractor/feed/FeedExtractor;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    move-result-object p2

    .line 177
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_6

    :cond_0
    const/4 p2, 0x0

    move-object v4, p2

    :goto_0
    if-nez p2, :cond_7

    .line 188
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result p2

    .line 189
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 187
    invoke-static {p2, v4, v5}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p2

    .line 191
    new-instance v4, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v4}, Lio/reactivex/rxjava3/core/Single;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p2

    .line 192
    invoke-virtual {p2}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 193
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    move-result-object v4

    const-string v6, "getTabs(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 199
    iget-object v9, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    .line 198
    invoke-static {v9, p3, v8}, Lorg/schabi/newpipe/util/ChannelTabHelper;->fetchFeedChannelTab(Landroid/content/Context;Landroid/content/SharedPreferences;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 865
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1563
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1635
    check-cast v6, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 205
    new-instance v7, Lkotlin/Pair;

    .line 206
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result v8

    invoke-static {v8, v6, v5}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v8

    .line 207
    new-instance v9, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v8, v9}, Lio/reactivex/rxjava3/core/Single;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v8

    .line 208
    invoke-virtual {v8}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v8

    .line 205
    invoke-direct {v7, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1635
    invoke-interface {p3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1374
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1461
    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "component1(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 213
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 218
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result v6

    .line 219
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v5

    .line 217
    invoke-static {v6, v4, v5}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMoreChannelTabItems(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 223
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v4

    const-string v5, "getItems(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 226
    :cond_4
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v4

    const-string v5, "getRelatedItems(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1462
    :goto_4
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 808
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    if-eqz v2, :cond_6

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 233
    :cond_7
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 236
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 233
    invoke-direct {p3, p1, p2, v4, v3}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/extractor/Info;Ljava/util/List;Ljava/util/List;)V

    .line 232
    invoke-static {p3}, Lio/reactivex/rxjava3/core/Notification;->createOnNext(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p2

    .line 235
    const-string p3, "createOnNext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    .line 241
    :goto_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result p3

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 242
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 243
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUid()J

    move-result-wide v2

    .line 246
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    move-object p2, p1

    .line 242
    :goto_7
    invoke-direct {v0, v2, v3, p3, p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Notification;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p1

    const-string p2, "createOnError(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final loadStreams$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    return-object p0
.end method

.method private static final loadStreams$lambda$3$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    return-object p0
.end method

.method private final postProcessFeed()Lio/reactivex/rxjava3/core/Completable;
    .locals 2

    .line 259
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 264
    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 270
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    const-string v1, "subscribeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final postProcessFeed$lambda$0(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 4

    .line 260
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    const v2, 0x7f1201c3

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->postEvent(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)V

    .line 261
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->removeOrphansOrOlderStreams$default(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Lj$/time/OffsetDateTime;ILjava/lang/Object;)V

    .line 263
    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedResultsHolder:Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;

    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;->getItemsErrors()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->postEvent(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)V

    return-void
.end method

.method public static synthetic startLoading$default(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;JZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Single;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 61
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading(JZ)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final getNotification()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notification:Lio/reactivex/rxjava3/core/Flowable;

    return-object v0
.end method

.method public final startLoading(JZ)Lio/reactivex/rxjava3/core/Single;
    .locals 5

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    const v2, 0x7f1201d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 66
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz p3, :cond_0

    .line 72
    sget-object p3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {p3}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object p3

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    iget-object p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    const v2, 0x7f1201cd

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "getString(...)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    const v4, 0x7f1201cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {v0, p3, v3}, Lorg/schabi/newpipe/ktx/SharedPreferencesKt;->getStringSafe(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 78
    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v2}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v2

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Lj$/time/OffsetDateTime;->minusSeconds(J)Lj$/time/OffsetDateTime;

    move-result-object p3

    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 85
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 86
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->outdatedSubscriptions(Lj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x2

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    .line 88
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 89
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 88
    invoke-virtual {p1, p3, p2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->outdatedSubscriptionsWithNotificationMode(Lj$/time/OffsetDateTime;I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    goto :goto_1

    .line 91
    :cond_2
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->outdatedSubscriptionsForGroup(JLj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 96
    :goto_1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const-wide/16 v2, 0x1

    .line 99
    invoke-virtual {p1, v2, v3}, Lio/reactivex/rxjava3/core/Flowable;->take(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 100
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$1;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Flowable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 104
    sget-object p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Flowable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 105
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 106
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$3;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$3;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Flowable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 110
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 111
    sget-object p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$4;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$4;

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Flowable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 112
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$5;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$5;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Flowable;->takeWhile(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 113
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$6;

    invoke-direct {p3, p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$6;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Flowable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x6

    .line 122
    invoke-virtual {p1, p2, p3}, Lio/reactivex/rxjava3/core/Flowable;->parallel(II)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object p1

    .line 123
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->runOn(Lio/reactivex/rxjava3/core/Scheduler;I)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object p1

    .line 124
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$7;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$7;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object p1

    .line 125
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;

    invoke-direct {p2, p0, v1, v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;ZLandroid/content/SharedPreferences;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/parallel/ParallelFlowable;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lio/reactivex/rxjava3/parallel/ParallelFlowable;->sequential()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 129
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 130
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$NotificationConsumer;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 131
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    const/16 p2, 0x14

    .line 132
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->buffer(I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 133
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 134
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->toList()Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 136
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$9;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$9;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    const-string p2, "flatMap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
