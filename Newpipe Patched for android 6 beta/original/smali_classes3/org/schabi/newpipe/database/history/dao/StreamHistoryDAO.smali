.class public abstract Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO;
.super Ljava/lang/Object;
.source "StreamHistoryDAO.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/BasicDAO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteAll()I
.end method

.method public abstract deleteStreamHistory(J)I
.end method

.method public abstract getHistory()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getHistorySortedById()Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getLatestEntry(J)Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;
.end method

.method public abstract getStatistics()Lio/reactivex/rxjava3/core/Flowable;
.end method
