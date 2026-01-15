.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO;->getState(J)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method
