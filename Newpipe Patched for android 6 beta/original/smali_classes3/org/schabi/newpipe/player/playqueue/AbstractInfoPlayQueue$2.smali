.class Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;
.super Ljava/lang/Object;
.source "AbstractInfoPlayQueue.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->getNextPageObserver()Lio/reactivex/rxjava3/core/SingleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching more playlist, marking playlist as complete."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fputisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;Z)V

    .line 141
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->notifyChange()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-static {v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fgetisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    iget-boolean v1, v0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isInitial:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fgetfetchReactor(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-static {v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fgetfetchReactor(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fputfetchReactor(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void

    .line 113
    :cond_1
    :goto_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->onSuccess(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V

    return-void
.end method

.method public onSuccess(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V
    .locals 3

    .line 122
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fputisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;Z)V

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 129
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda1;

    const-class v2, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 130
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 131
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 127
    invoke-static {p1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$smextractListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    .line 133
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    invoke-static {p1}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fgetfetchReactor(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 134
    iget-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;->this$0:Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->-$$Nest$fputfetchReactor(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
