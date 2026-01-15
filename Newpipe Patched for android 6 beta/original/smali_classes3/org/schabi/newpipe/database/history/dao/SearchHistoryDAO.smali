.class public interface abstract Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO;
.super Ljava/lang/Object;
.source "SearchHistoryDAO.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/BasicDAO;


# virtual methods
.method public abstract deleteAll()I
.end method

.method public abstract deleteAllWhereQuery(Ljava/lang/String;)I
.end method

.method public abstract getLatestEntry()Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;
.end method

.method public abstract getSimilarEntries(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract getUniqueEntries(I)Lio/reactivex/rxjava3/core/Flowable;
.end method
