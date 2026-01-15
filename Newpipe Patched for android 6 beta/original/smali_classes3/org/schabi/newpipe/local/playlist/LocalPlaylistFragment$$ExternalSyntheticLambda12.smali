.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/schabi/newpipe/local/history/HistoryRecordManager;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;ZLorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    iput-boolean p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;->f$1:Z

    iput-object p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;->f$2:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;->f$1:Z

    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda12;->f$2:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$lambda$u6CABirxWJifjOs_DdDIWoe07cI(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;ZLorg/schabi/newpipe/local/history/HistoryRecordManager;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
