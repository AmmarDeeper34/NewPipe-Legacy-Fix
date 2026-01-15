.class public abstract synthetic Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO$-CC;
.super Ljava/lang/Object;
.source "StreamStateDAO.kt"


# direct methods
.method public static $default$upsert(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)J
    .locals 1

    .line 0
    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;->silentInsertInternal(Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V

    .line 43
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
