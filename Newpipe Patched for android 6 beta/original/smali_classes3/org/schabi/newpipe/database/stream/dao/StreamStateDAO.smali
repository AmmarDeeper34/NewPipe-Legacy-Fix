.class public interface abstract Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;
.super Ljava/lang/Object;
.source "StreamStateDAO.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/BasicDAO;


# virtual methods
.method public abstract deleteAll()I
.end method

.method public abstract deleteState(J)I
.end method

.method public abstract getState(J)Lio/reactivex/rxjava3/core/Flowable;
.end method

.method public abstract silentInsertInternal(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V
.end method

.method public abstract upsert(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)J
.end method
