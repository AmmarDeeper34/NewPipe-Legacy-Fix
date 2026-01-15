.class final Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$3;
.super Ljava/lang/Object;
.source "FeedViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/FeedViewModel;-><init>(Landroid/app/Application;JZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/FeedViewModel;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/FeedViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$3;->this$0:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$3;->accept(Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;)V

    return-void
.end method

.method public final accept(Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;)V
    .locals 10

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->component1()Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->component2()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->component3()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->component4()Lj$/time/OffsetDateTime;

    move-result-object v4

    .line 87
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$3;->this$0:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->access$getMutableStateLiveData$p(Lorg/schabi/newpipe/local/feed/FeedViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 89
    instance-of v2, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;

    const/4 v3, 0x2

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 1563
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1635
    check-cast v7, Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 89
    new-instance v9, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    invoke-direct {v9, v7, v8, v2, v8}, Lorg/schabi/newpipe/local/feed/item/StreamItem;-><init>(Lorg/schabi/newpipe/database/stream/StreamWithState;Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1635
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;-><init>(Ljava/util/List;Lj$/time/OffsetDateTime;JLjava/util/List;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    .line 90
    instance-of v3, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    if-eqz v3, :cond_2

    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;

    move-object v1, v0

    check-cast v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->getCurrentProgress()I

    move-result v3

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->getMaxProgress()I

    move-result v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->getProgressMessage()I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;-><init>(III)V

    goto :goto_2

    .line 91
    :cond_2
    instance-of v3, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    if-eqz v3, :cond_4

    .line 1563
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1635
    check-cast v7, Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 91
    new-instance v9, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    invoke-direct {v9, v7, v8, v2, v8}, Lorg/schabi/newpipe/local/feed/item/StreamItem;-><init>(Lorg/schabi/newpipe/database/stream/StreamWithState;Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1635
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_3
    move-object v1, v0

    check-cast v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;->getItemsErrors()Ljava/util/List;

    move-result-object v7

    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;-><init>(Ljava/util/List;Lj$/time/OffsetDateTime;JLjava/util/List;)V

    goto :goto_2

    .line 92
    :cond_4
    instance-of v1, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;

    if-eqz v1, :cond_7

    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;

    move-object v1, v0

    check-cast v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;-><init>(Ljava/lang/Throwable;)V

    .line 87
    :goto_2
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 96
    instance-of p1, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;

    if-nez p1, :cond_6

    instance-of p1, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    return-void

    .line 97
    :cond_6
    :goto_3
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->reset()V

    return-void

    .line 88
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
