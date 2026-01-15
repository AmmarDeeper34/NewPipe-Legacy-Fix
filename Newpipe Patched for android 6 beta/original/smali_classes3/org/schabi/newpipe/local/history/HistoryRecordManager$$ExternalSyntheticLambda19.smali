.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iput-wide p3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iget-wide v2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->$r8$lambda$FLfROnQ_luXzz7__b3Mz8u_RkKg(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;J)V

    return-void
.end method
