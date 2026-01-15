.class public Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "ChannelTabFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        "Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;",
        ">;",
        "Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;"
    }
.end annotation


# instance fields
.field protected channelName:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

.field protected tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    return-void
.end method

.method public static getInstance(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;
    .locals 1

    .line 54
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;-><init>()V

    .line 55
    iput p0, v0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 56
    iput-object p1, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 57
    iput-object p2, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->channelName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-static {v0}, Lorg/schabi/newpipe/util/ChannelTabHelper;->isStreamsTab(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    .line 93
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/databinding/PlaylistControlBinding;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 7

    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 163
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda1;

    const-class v2, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 164
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 165
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .line 167
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    check-cast v0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    check-cast v0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 168
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;I)V

    return-object v1
.end method

.method public bridge synthetic handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->handleResult(Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;)V

    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;)V
    .locals 3

    .line 120
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    instance-of v0, v0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 138
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getSortFilter()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p1, v0, v1, v2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "Could not recreate channel tab handler"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 150
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 152
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/PlaylistControlBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :goto_1
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    invoke-static {p1, v0, p0}, Lorg/schabi/newpipe/util/PlayButtonHelper;->initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/databinding/PlaylistControlBinding;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    :cond_2
    return-void
.end method

.method protected loadMoreItemsLogic()Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 105
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMoreChannelTabItems(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method protected loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 100
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0055

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 84
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lorg/schabi/newpipe/databinding/PlaylistControlBinding;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 115
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->channelName:Ljava/lang/String;

    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method
