.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$3;
.super Ljava/lang/Object;
.source "MediaBrowserPlaybackPreparer.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromInfoItemMediaId(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $serviceId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$3;->$serviceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 247
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$3;->apply(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    move-result-object p1

    const-string v0, "getTabs(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 249
    invoke-static {v1}, Lorg/schabi/newpipe/util/ChannelTabHelper;->isStreamsTab(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    if-eqz v0, :cond_2

    .line 251
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;

    iget v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractPlayQueueFromInfoItemMediaId$3;->$serviceId:I

    new-instance v2, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    invoke-direct {p1, v1, v2}, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object p1

    .line 250
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v0, "No streams tab found"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
