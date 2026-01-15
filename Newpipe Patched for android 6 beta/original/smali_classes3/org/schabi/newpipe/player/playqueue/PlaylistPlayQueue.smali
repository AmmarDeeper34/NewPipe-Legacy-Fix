.class public final Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;
.super Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;
.source "PlaylistPlayQueue.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/ListInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/ListInfo;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dispose()V
    .locals 0

    .line 13
    invoke-super {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->dispose()V

    return-void
.end method

.method public fetch()V
    .locals 3

    .line 38
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isInitial:Z

    if-eqz v0, :cond_0

    .line 39
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->baseUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 40
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 41
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->getHeadListObserver()Lio/reactivex/rxjava3/core/SingleObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void

    .line 44
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMorePlaylistItems(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 45
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 46
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->getNextPageObserver()Lio/reactivex/rxjava3/core/SingleObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistPlayQueue@"

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

    .line 13
    invoke-super {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete()Z

    move-result v0

    return v0
.end method
