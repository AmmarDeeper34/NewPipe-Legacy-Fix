.class public final synthetic Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    iput-object p2, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    iget-object v1, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->$r8$lambda$xym4U6zLjInwHHfQCI00iOIprM4(Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Landroidx/sqlite/SQLiteConnection;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
