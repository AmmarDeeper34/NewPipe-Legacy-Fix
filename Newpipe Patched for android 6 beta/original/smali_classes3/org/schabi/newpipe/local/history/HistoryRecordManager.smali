.class public Lorg/schabi/newpipe/local/history/HistoryRecordManager;
.super Ljava/lang/Object;
.source "HistoryRecordManager.java"


# instance fields
.field private final database:Lorg/schabi/newpipe/database/AppDatabase;

.field private final searchHistoryKey:Ljava/lang/String;

.field private final searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final streamHistoryKey:Ljava/lang/String;

.field private final streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

.field private final streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

.field private final streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;


# direct methods
.method public static synthetic $r8$lambda$3_JZGKQEI7wOlWdO_GWBtiRiXes(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$loadStreamState$8(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3jpUddWZtQf0eLnaxl2Dsv-ZHnY(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$onSearched$6(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4eP3-XkhZGLRaRoFnvQE2m4wqnA(Ljava/util/List;)Lio/reactivex/rxjava3/core/MaybeSource;
    .locals 1

    .line 242
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5vOGvhMbv7vtz_iRWmkoJOupdVk(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$loadStreamState$11(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8Btx8A376Pw7us9BM_4sP24PGyE(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$markAsWatched$1(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BhUJD_LGYEAyHY_vxUbjTI-bPt8(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$onViewed$3(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FLfROnQ_luXzz7__b3Mz8u_RkKg(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$saveStreamState$14(Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$LSLgKj6ktL8MqTI-WA-fpPthmNs(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$deleteSearchHistory$7(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WqtJDS4WJ-z-v8vQ7f9LDC2LA2o(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$onSearched$5(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YY4a9Ap9Z-dlDRdnOFv-AF-jJjc(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$onViewed$2(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aegbVXagGjX0IPN8rVr8VlqSSCE(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$markAsWatched$0(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fC5elBgMynCvKpykJKwKICWQVUk(Lorg/schabi/newpipe/local/history/HistoryRecordManager;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$deleteStreamHistoryAndState$4(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$fe40Hn1TzlVSux5kDmKR9pFV_Wk(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$saveStreamState$15(Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hLX5Qm-Hu-99aGHiTVyKRhMKFVE(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)Z
    .locals 2

    .line 252
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isValid(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qJLcJ5_x69littVqGTpB2AZ6ESw(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/InfoItem;)[Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$loadStreamState$16(Lorg/schabi/newpipe/extractor/InfoItem;)[Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qjLxXC8QmAPbebMa4JRuAt1rdxU(Ljava/util/List;)Lio/reactivex/rxjava3/core/MaybeSource;
    .locals 1

    .line 251
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zUUczSGaJLHFhhdPTwVKucAHjvQ(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)Z
    .locals 2

    .line 243
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isValid(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zfdcIUBb6W62abnaUdgLBHLtzKg(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->lambda$loadLocalStreamStateBatch$17(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 73
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    .line 74
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamHistoryDAO()Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    .line 75
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->searchHistoryDAO()Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    .line 76
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamStateDAO()Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    .line 77
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const v0, 0x7f120135

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryKey:Ljava/lang/String;

    const v0, 0x7f12013b

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryKey:Ljava/lang/String;

    return-void
.end method

.method private isSearchHistoryEnabled()Z
    .locals 3

    .line 230
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isStreamHistoryEnabled()Z
    .locals 3

    .line 185
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$deleteSearchHistory$7(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;->deleteAllWhereQuery(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$deleteStreamHistoryAndState$4(J)V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;->deleteState(J)I

    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;->deleteStreamHistory(J)I

    return-void
.end method

.method private synthetic lambda$loadLocalStreamStateBatch$17(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/database/LocalItem;

    .line 288
    instance-of v2, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 289
    check-cast v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->getStreamId()J

    move-result-wide v1

    goto :goto_1

    .line 290
    :cond_0
    instance-of v2, v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    if-eqz v2, :cond_1

    .line 291
    check-cast v1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->getStreamUid()J

    move-result-wide v1

    goto :goto_1

    .line 292
    :cond_1
    instance-of v2, v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    if-eqz v2, :cond_3

    .line 293
    check-cast v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->getStreamId()J

    move-result-wide v1

    .line 298
    :goto_1
    iget-object v4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    invoke-interface {v4, v1, v2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;->getState(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 300
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 303
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private synthetic lambda$loadStreamState$11(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Ljava/lang/Long;
    .locals 2

    .line 248
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    new-instance v1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$loadStreamState$16(Lorg/schabi/newpipe/extractor/InfoItem;)[Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;
    .locals 6

    .line 268
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    .line 269
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->getStream(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 270
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 271
    new-array p1, v1, [Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    aput-object v3, p1, v2

    return-object p1

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    .line 274
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;->getState(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    new-array p1, v1, [Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    aput-object v3, p1, v2

    return-object p1

    .line 278
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    new-array v0, v1, [Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    aput-object p1, v0, v2

    return-object v0
.end method

.method private synthetic lambda$loadStreamState$8(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Ljava/lang/Long;
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    new-instance v1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$markAsWatched$0(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 10

    .line 104
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 106
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v0

    .line 107
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 105
    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 110
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 112
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v0

    .line 113
    iget-object v4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    new-instance v5, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v5, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    move-result-wide v4

    :goto_0
    move-wide v5, v4

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v0

    .line 116
    iget-object v4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    new-instance v5, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v5, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    move-result-wide v4

    goto :goto_0

    .line 120
    :goto_1
    new-instance p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    const-wide/16 v7, 0x3e8

    mul-long v0, v0, v7

    invoke-direct {p1, v5, v6, v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;-><init>(JJ)V

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)J

    .line 127
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    invoke-virtual {p1, v5, v6}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;->getLatestEntry(J)Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    move-result-object p1

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    new-instance v4, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    const-wide/16 v8, 0x0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;-><init>(JLj$/time/OffsetDateTime;J)V

    invoke-interface {p1, v4}, Lorg/schabi/newpipe/database/BasicDAO;->insert(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 132
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$markAsWatched$1(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method private synthetic lambda$onSearched$5(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    invoke-interface {v0}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;->getLatestEntry()Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->hasEqualValues(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;->setCreationDate(Lj$/time/OffsetDateTime;)V

    .line 204
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    invoke-interface {p1, v0}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    iget-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/database/BasicDAO;->insert(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onSearched$6(Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method private synthetic lambda$onViewed$2(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 8

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    new-instance v1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    move-result-wide v3

    .line 145
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    invoke-virtual {p1, v3, v4}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;->getLatestEntry(J)Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    invoke-interface {v0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->delete(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->setAccessDate(Lj$/time/OffsetDateTime;)V

    .line 150
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->getRepeatCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;->setRepeatCount(J)V

    .line 151
    iget-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/database/BasicDAO;->insert(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    new-instance v2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    const-wide/16 v6, 0x1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;-><init>(JLj$/time/OffsetDateTime;J)V

    invoke-interface {p1, v2}, Lorg/schabi/newpipe/database/BasicDAO;->insert(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onViewed$3(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda17;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method private synthetic lambda$saveStreamState$14(Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V
    .locals 3

    .line 258
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    new-instance v1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    move-result-wide v0

    .line 259
    new-instance v2, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    invoke-direct {v2, v0, v1, p2, p3}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;-><init>(JJ)V

    .line 260
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isValid(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    invoke-interface {p1, v2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)J

    :cond_0
    return-void
.end method

.method private synthetic lambda$saveStreamState$15(Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V
    .locals 2

    .line 257
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public deleteCompleteSearchHistory()Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 218
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public deleteCompleteStreamStateHistory()Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 173
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public deleteSearchHistory(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 212
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 213
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public deleteStreamHistoryAndState(J)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    .line 160
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 163
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public deleteWholeStreamHistory()Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 168
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedSearches(Ljava/lang/String;II)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    iget-object p3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    invoke-interface {p3, p1, p2}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;->getSimilarEntries(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->searchHistoryTable:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;

    invoke-interface {p1, p3}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;->getUniqueEntries(I)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getStreamHistorySortedById()Lio/reactivex/rxjava3/core/Flowable;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;->getHistorySortedById()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getStreamStatistics()Lio/reactivex/rxjava3/core/Flowable;
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamHistoryTable:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;->getStatistics()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public loadLocalStreamStateBatch(Ljava/util/List;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 284
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 307
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public loadStreamState(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 3

    .line 248
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    .line 249
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Single;->flatMapPublisher(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda12;-><init>()V

    .line 251
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 252
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 253
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public loadStreamState(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 3

    .line 238
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getStream()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V

    .line 239
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamStateTable:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    .line 240
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Single;->flatMapPublisher(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda5;-><init>()V

    .line 242
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 243
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 244
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public loadStreamState(Lorg/schabi/newpipe/extractor/InfoItem;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 267
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/InfoItem;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 279
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public markAsWatched(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 2

    .line 95
    invoke-direct {p0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->isStreamHistoryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1

    .line 99
    :cond_0
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v0}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 100
    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Lj$/time/OffsetDateTime;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 134
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public onSearched(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 2

    .line 193
    invoke-direct {p0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->isSearchHistoryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v0}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 198
    new-instance v1, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    invoke-direct {v1, v0, p1, p2}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;-><init>(Lj$/time/OffsetDateTime;ILjava/lang/String;)V

    .line 200
    new-instance p1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1, v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 208
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public onViewed(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 2

    .line 138
    invoke-direct {p0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->isStreamHistoryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v0}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 143
    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 156
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public removeOrphanedRecords()Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 315
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public saveStreamState(Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)Lio/reactivex/rxjava3/core/Completable;
    .locals 1

    .line 257
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;-><init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 263
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method
