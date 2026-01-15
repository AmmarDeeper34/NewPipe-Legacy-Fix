.class public final Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;
.super Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;
.source "ChannelTabPlayQueue.java"


# instance fields
.field final linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;


# direct methods
.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 6

    .line 31
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V
    .locals 6

    .line 25
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V

    .line 26
    iput-object p2, v0, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    return-void
.end method


# virtual methods
.method public bridge synthetic dispose()V
    .locals 0

    .line 16
    invoke-super {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->dispose()V

    return-void
.end method

.method public fetch()V
    .locals 3

    .line 41
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isInitial:Z

    if-eqz v0, :cond_0

    .line 42
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 43
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 44
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->getHeadListObserver()Lio/reactivex/rxjava3/core/SingleObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void

    .line 47
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMoreChannelTabItems(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 48
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 49
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->getNextPageObserver()Lio/reactivex/rxjava3/core/SingleObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelTabPlayQueue@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isComplete()Z
    .locals 1

    .line 16
    invoke-super {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete()Z

    move-result v0

    return v0
.end method
