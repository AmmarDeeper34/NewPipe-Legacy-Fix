.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda11;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda11;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->$r8$lambda$5vOGvhMbv7vtz_iRWmkoJOupdVk(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
