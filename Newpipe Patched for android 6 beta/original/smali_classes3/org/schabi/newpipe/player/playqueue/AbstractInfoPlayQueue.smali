.class abstract Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;
.super Lorg/schabi/newpipe/player/playqueue/PlayQueue;
.source "AbstractInfoPlayQueue.java"


# instance fields
.field final baseUrl:Ljava/lang/String;

.field private transient fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

.field private isComplete:Z

.field isInitial:Z

.field nextPage:Lorg/schabi/newpipe/extractor/Page;

.field final serviceId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetfetchReactor(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfetchReactor(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisComplete(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smextractListItems(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->extractListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V
    .locals 1

    .line 51
    invoke-static {p4}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->extractListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    .line 53
    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->baseUrl:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 55
    iput p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->serviceId:I

    .line 57
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isInitial:Z

    if-nez p1, :cond_0

    .line 58
    invoke-static {p3}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete:Z

    return-void
.end method

.method protected constructor <init>(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(Lorg/schabi/newpipe/extractor/ListInfo;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/schabi/newpipe/extractor/ListInfo;I)V
    .locals 6

    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v3

    .line 38
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 40
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda1;

    const-class v4, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-direct {v0, v4}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 41
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v4}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 42
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    move-object v0, p0

    move v5, p2

    .line 37
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V

    return-void
.end method

.method private static extractListItems(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 156
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 148
    invoke-super {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->dispose()V

    .line 149
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->fetchReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method getHeadListObserver()Lio/reactivex/rxjava3/core/SingleObserver;
    .locals 1

    .line 69
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$1;-><init>(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)V

    return-object v0
.end method

.method getNextPageObserver()Lio/reactivex/rxjava3/core/SingleObserver;
    .locals 1

    .line 108
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue$2;-><init>(Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;)V

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public isComplete()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/AbstractInfoPlayQueue;->isComplete:Z

    return v0
.end method
