.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;
.super Ljava/lang/Object;
.source "MediaBrowserImpl.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->onSearch(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
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
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 391
    check-cast p1, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;->apply(Lorg/schabi/newpipe/extractor/search/SearchInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/schabi/newpipe/extractor/search/SearchInfo;)Ljava/util/List;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object p1

    const-string v0, "getRelatedItems(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;->this$0:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 1617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1625
    check-cast v2, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 391
    invoke-static {v0, v2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->access$createInfoItemMediaItem(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;Lorg/schabi/newpipe/extractor/InfoItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1625
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
