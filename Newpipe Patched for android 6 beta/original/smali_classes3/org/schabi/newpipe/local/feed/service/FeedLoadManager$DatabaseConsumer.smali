.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;


# direct methods
.method public static synthetic $r8$lambda$BTvKTp8pGsujE1PWFQysDl8HOus(Ljava/util/List;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;->accept$lambda$0(Ljava/util/List;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final accept$lambda$0(Ljava/util/List;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 11

    .line 285
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/Notification;

    .line 287
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Notification;->isOnNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 290
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getStreams()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;->filterNewStreams(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->setNewStreams(Ljava/util/List;)V

    .line 292
    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    move-result-object v3

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUid()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getStreams()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->upsertAll$default(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;Lj$/time/OffsetDateTime;ILjava/lang/Object;)V

    .line 293
    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getSubscriptionManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->updateFromInfo(Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;)V

    .line 295
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getFeedResultsHolder$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;

    move-result-object v0

    .line 297
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getErrors()Ljava/util/List;

    move-result-object v2

    .line 1563
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Ljava/lang/Throwable;

    .line 298
    new-instance v5, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 299
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUid()J

    move-result-wide v6

    .line 300
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getServiceId()I

    move-result v8

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 298
    invoke-direct {v5, v6, v7, v8, v4}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1635
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;->addErrors(Ljava/util/List;)V

    .line 305
    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    move-result-object v0

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->markAsOutdated(J)V

    goto/16 :goto_0

    .line 308
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Notification;->isOnError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Notification;->getError()Ljava/lang/Throwable;

    move-result-object v0

    .line 310
    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getFeedResultsHolder$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;->addError(Ljava/lang/Throwable;)V

    .line 312
    instance-of v1, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    if-eqz v1, :cond_0

    .line 313
    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    move-result-object v1

    check-cast v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;->getSubscriptionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->markAsOutdated(J)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private final filterNewStreams(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 322
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 323
    invoke-static {v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->doesStreamExist(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 328
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object v3

    .line 329
    sget-object v4, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->Companion:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;

    invoke-virtual {v4}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;->getFEED_OLDEST_ALLOWED_DATE()Lj$/time/OffsetDateTime;

    move-result-object v4

    .line 328
    invoke-virtual {v3, v4}, Lj$/time/OffsetDateTime;->isAfter(Lj$/time/OffsetDateTime;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 865
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 3

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->database()Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    new-instance v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$DatabaseConsumer;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method
