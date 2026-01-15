.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/InfoItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/InfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/InfoItem;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/InfoItem;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->$r8$lambda$qJLcJ5_x69littVqGTpB2AZ6ESw(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/extractor/InfoItem;)[Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    move-result-object v0

    return-object v0
.end method
