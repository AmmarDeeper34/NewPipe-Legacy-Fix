.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

.field public final synthetic f$2:Lj$/time/OffsetDateTime;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;->f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    iput-object p3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;->f$2:Lj$/time/OffsetDateTime;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;->f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    iget-object v2, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda8;->f$2:Lj$/time/OffsetDateTime;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->$r8$lambda$WqtJDS4WJ-z-v8vQ7f9LDC2LA2o(Lorg/schabi/newpipe/local/history/HistoryRecordManager;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
