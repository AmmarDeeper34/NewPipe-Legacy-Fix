.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->$r8$lambda$hLX5Qm-Hu-99aGHiTVyKRhMKFVE(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)Z

    move-result p1

    return p1
.end method
