.class public final Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;
.super Ljava/lang/Object;
.source "FeedDatabaseManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;

.field private static final FEED_OLDEST_ALLOWED_DATE:Lj$/time/OffsetDateTime;


# instance fields
.field private final database:Lorg/schabi/newpipe/database/AppDatabase;

.field private final feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

.field private final feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

.field private final streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;


# direct methods
.method public static synthetic $r8$lambda$BJJBltzn_hGdpb7tfi0F_cuP3Hw(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->updateSubscriptionsForGroup$lambda$0(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eyWU0BvoiIKkxeuxkalEW6jAclA(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->updateGroupsOrder$lambda$2(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oMb7FhCVjukJkwprYi0Iq6g55og(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;J)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->deleteGroup$lambda$0(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u67LkxKfZRDHybmZuPPBeiTzsuo(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->updateGroup$lambda$0(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xShoyt_EuQZobRUefNnrbPXA0Vs(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->createGroup$lambda$0(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->Companion:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;

    .line 35
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->minusWeeks(J)Lj$/time/LocalDate;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lj$/time/LocalDate;->atStartOfDay()Lj$/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    const-string v1, "atOffset(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->FEED_OLDEST_ALLOWED_DATE:Lj$/time/OffsetDateTime;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 27
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/AppDatabase;->feedDAO()Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    .line 28
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/AppDatabase;->feedGroupDAO()Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    return-void
.end method

.method public static final synthetic access$getFEED_OLDEST_ALLOWED_DATE$cp()Lj$/time/OffsetDateTime;
    .locals 1

    .line 25
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->FEED_OLDEST_ALLOWED_DATE:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method private static final createGroup$lambda$0(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)Ljava/lang/Long;
    .locals 9

    .line 148
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    new-instance v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->insert(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static final deleteGroup$lambda$0(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;J)Ljava/lang/Object;
    .locals 0

    .line 166
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->delete(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic removeOrphansOrOlderStreams$default(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Lj$/time/OffsetDateTime;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 114
    sget-object p1, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->FEED_OLDEST_ALLOWED_DATE:Lj$/time/OffsetDateTime;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->removeOrphansOrOlderStreams(Lj$/time/OffsetDateTime;)V

    return-void
.end method

.method private static final updateGroup$lambda$0(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)Ljava/lang/Object;
    .locals 0

    .line 160
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->update(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final updateGroupsOrder$lambda$2(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    .line 175
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->updateOrder(Ljava/util/Map;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateSubscriptionsForGroup$lambda$0(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->updateSubscriptionsForGroup(JLjava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic upsertAll$default(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;Lj$/time/OffsetDateTime;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 86
    sget-object p4, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->FEED_OLDEST_ALLOWED_DATE:Lj$/time/OffsetDateTime;

    .line 83
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->upsertAll(JLjava/util/List;Lj$/time/OffsetDateTime;)V

    return-void
.end method


# virtual methods
.method public final createGroup(Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 149
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 150
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    const-string p2, "observeOn(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final database()Lorg/schabi/newpipe/database/AppDatabase;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    return-object v0
.end method

.method public final deleteGroup(J)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    .line 166
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 167
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 168
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string p2, "observeOn(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final doesStreamExist(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Z
    .locals 3

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getUrl(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->exists$app_release(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final getGroup(J)Lio/reactivex/rxjava3/core/Maybe;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->getGroup(J)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 155
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 156
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    const-string p2, "observeOn(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStreams(JZZZ)Lio/reactivex/rxjava3/core/Maybe;
    .locals 6

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    if-eqz p5, :cond_0

    const/4 p5, 0x0

    :goto_0
    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    goto :goto_1

    .line 53
    :cond_0
    invoke-static {}, Lj$/time/OffsetDateTime;->now()Lj$/time/OffsetDateTime;

    move-result-object p5

    goto :goto_0

    .line 49
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->getStreams(JZZLj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final groups()Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final markAsOutdated(J)V
    .locals 3

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    .line 77
    new-instance v1, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;-><init>(JLj$/time/OffsetDateTime;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->setLastUpdatedForSubscription(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    return-void
.end method

.method public final notLoadedCount(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 66
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->notLoadedCount()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->notLoadedCountForGroup(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final oldestSubscriptionUpdate(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 182
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->oldestSubscriptionUpdateFromAll()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->oldestSubscriptionUpdate(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final outdatedSubscriptions(Lj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    const-string v0, "outdatedThreshold"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->getAllOutdated(Lj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final outdatedSubscriptionsForGroup(JLj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    const-string v0, "outdatedThreshold"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->getAllOutdatedForGroup(JLj$/time/OffsetDateTime;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final outdatedSubscriptionsWithNotificationMode(Lj$/time/OffsetDateTime;I)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    const-string v0, "outdatedThreshold"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->getOutdatedWithNotificationMode(Lj$/time/OffsetDateTime;I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final removeOrphansOrOlderStreams(Lj$/time/OffsetDateTime;)V
    .locals 1

    const-string v0, "oldestAllowedDate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->unlinkStreamsOlderThan(Lj$/time/OffsetDateTime;)V

    .line 116
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->deleteOrphans()I

    return-void
.end method

.method public final subscriptionIdsForGroup(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->getSubscriptionIdsFor(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 136
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 137
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    const-string p2, "observeOn(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateGroup(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    const-string v0, "feedGroupEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 161
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 162
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string v0, "observeOn(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateGroupsOrder(Ljava/util/List;)Lio/reactivex/rxjava3/core/Completable;
    .locals 7

    const-string v0, "groupIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1222
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1223
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1252
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1253
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 173
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1253
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    .line 173
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1253
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v2, v5

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/util/Map;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 176
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 177
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string v0, "observeOn(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateSubscriptionsForGroup(JLjava/util/List;)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    const-string v0, "subscriptionIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 143
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 144
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    const-string p2, "observeOn(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final upsertAll(JLjava/util/List;Lj$/time/OffsetDateTime;)V
    .locals 5

    const-string v0, "items"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldestAllowedDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 90
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 93
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v2, p4}, Lj$/time/OffsetDateTime;->compareTo(Lj$/time/OffsetDateTime;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 92
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_2
    iget-object p3, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {p3, p1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->unlinkOldLivestreams(J)V

    .line 101
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 1563
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {v0, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 102
    new-instance v2, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 1635
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 103
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    invoke-virtual {v0, p3}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsertAll(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 1635
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 104
    new-instance p4, Lorg/schabi/newpipe/database/feed/model/FeedEntity;

    invoke-direct {p4, v1, v2, p1, p2}, Lorg/schabi/newpipe/database/feed/model/FeedEntity;-><init>(JJ)V

    .line 1635
    invoke-interface {v0, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    :cond_4
    iget-object p3, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    invoke-virtual {p3, v0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->insertAll(Ljava/util/List;)Ljava/util/List;

    .line 109
    :cond_5
    iget-object p3, p0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO;

    .line 110
    new-instance p4, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v0}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v0

    invoke-direct {p4, p1, p2, v0}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;-><init>(JLj$/time/OffsetDateTime;)V

    .line 109
    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO;->setLastUpdatedForSubscription(Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;)V

    return-void
.end method
