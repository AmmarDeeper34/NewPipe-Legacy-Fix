.class public final synthetic Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    iput-object p2, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    iget-object v1, p0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->$r8$lambda$7g-OfV05FYxmZRrgyn9P21s3HRs(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
