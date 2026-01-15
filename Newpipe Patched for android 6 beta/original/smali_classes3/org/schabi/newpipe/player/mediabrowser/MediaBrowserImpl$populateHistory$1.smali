.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateHistory$1;
.super Ljava/lang/Object;
.source "MediaBrowserImpl.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->populateHistory()Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateHistory$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 319
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateHistory$1;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateHistory$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 320
    invoke-static {v0, v2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->access$createHistoryMediaItem(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v2

    .line 1635
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
