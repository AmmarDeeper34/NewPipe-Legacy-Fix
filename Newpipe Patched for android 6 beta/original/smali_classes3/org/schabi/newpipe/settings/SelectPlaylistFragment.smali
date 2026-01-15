.class public Lorg/schabi/newpipe/settings/SelectPlaylistFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SelectPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;,
        Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;
    }
.end annotation


# instance fields
.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private emptyView:Landroid/widget/TextView;

.field private onSelectedListener:Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;

.field private playlists:Ljava/util/List;

.field private progressBar:Landroid/widget/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$IC19tt6Gn-UrkhYXiLtuo8ZxGoE(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->displayPlaylists(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetplaylists(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->playlists:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->clickedItem(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;

    .line 45
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->playlists:Ljava/util/List;

    return-void
.end method

.method private clickedItem(I)V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->playlists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 119
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;->onLocalPlaylistSelected(JLjava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 125
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;

    .line 126
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getServiceId()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getOrderingName()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-interface {v0, v1, v2, p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;->onRemotePlaylistSelected(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private displayPlaylists(Ljava/util/List;)V
    .locals 4

    .line 100
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->playlists:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->emptyView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private loadPlaylists()V
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object v0

    .line 91
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 92
    new-instance v2, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 94
    invoke-static {v1, v2}, Lorg/schabi/newpipe/local/bookmark/MergedPlaylistManager;->getMergedOrderedPlaylists(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    .line 95
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;)V

    new-instance v2, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;)V

    .line 96
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00fa

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0313

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0a01fb

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a013b

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->emptyView:Landroid/widget/TextView;

    .line 65
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    new-instance p2, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;Lorg/schabi/newpipe/settings/SelectPlaylistFragment-IA;)V

    .line 67
    iget-object p3, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->loadPlaylists()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Loading playlists"

    invoke-direct {v1, p1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public setOnSelectedListener(Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;

    return-void
.end method
