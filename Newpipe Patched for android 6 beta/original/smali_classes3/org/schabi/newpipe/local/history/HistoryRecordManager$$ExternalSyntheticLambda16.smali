.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda16;->f$0:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda16;->f$0:Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->deleteOrphans()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
