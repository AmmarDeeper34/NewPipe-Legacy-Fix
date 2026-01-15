.class public final Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;
.super Lorg/schabi/newpipe/local/dialog/PlaylistDialog;
.source "PlaylistAppendDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "org.schabi.newpipe.local.dialog.PlaylistAppendDialog"


# instance fields
.field private playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

.field private final playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private playlistDuplicateIndicator:Landroid/widget/TextView;

.field private playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$32Imcs3GYaB-AK9Bg8ybmEKtLfQ(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->onPlaylistsReceived(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5IN1_W9Cll1KS-90r0ILTu8iJ-A(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Landroid/widget/Toast;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->lambda$onPlaylistSelected$4(Landroid/widget/Toast;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cyy2cZyxAGy1l2wQlWZVNubSJKQ(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->lambda$onViewCreated$0(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/database/LocalItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PlXxk8UuTLMvw2fkYUXhzQFhc4Q(Landroid/widget/Toast;Ljava/lang/Integer;)V
    .locals 0

    .line 171
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$_eV8eKfNZHcCvUHxUvxXxhKuFfI(Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;)Z
    .locals 4

    .line 142
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->getTimesStreamIsContained()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$qaB7kzq9tkhb-qVHp0aoiCmeCnY(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;-><init>()V

    .line 36
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private anyPlaylistContainsDuplicates(Ljava/util/List;)Z
    .locals 1

    .line 141
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda4;-><init>()V

    .line 142
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onPlaylistSelected$4(Landroid/widget/Toast;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 162
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 164
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->getThumbnailStreamId()Ljava/lang/Long;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 165
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->getThumbnailStreamId()Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    .line 167
    iget-object p5, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 168
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->getUid()J

    move-result-wide v1

    const/4 p2, 0x0

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->changePlaylistThumbnail(JJZ)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p2

    .line 170
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p2

    new-instance p3, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda5;-><init>(Landroid/widget/Toast;)V

    .line 171
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 167
    invoke-virtual {p5, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->getStreamEntities()Ljava/util/List;

    move-result-object v0

    .line 70
    instance-of v1, p2, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 71
    check-cast p2, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->onPlaylistSelected(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->openCreatePlaylistDialog()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;
    .locals 1

    .line 45
    new-instance v0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;-><init>()V

    .line 46
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->setStreamEntities(Ljava/util/List;)V

    return-object v0
.end method

.method private onPlaylistSelected(Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Ljava/util/List;)V
    .locals 11

    .line 150
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->getTimesStreamIsContained()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 152
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->getTimesStreamIsContained()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const v0, 0x7f120375

    .line 151
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f120374

    .line 154
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 159
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->getUid()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->appendToPlaylist(JLjava/util/List;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v1

    .line 160
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v1

    new-instance v5, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;

    move-object v6, p0

    move-object v9, p1

    move-object v8, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Landroid/widget/Toast;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;)V

    .line 161
    invoke-virtual {v1, v5}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 159
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private onPlaylistsReceived(Ljava/util/List;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDuplicateIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDuplicateIndicator:Landroid/widget/TextView;

    .line 136
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->anyPlaylistContainsDuplicates(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 135
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0d0038

    .line 57
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->unsetSelectedListener()V

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    new-instance p2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 67
    new-instance v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 68
    new-instance v1, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->setSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V

    const v0, 0x7f0a0305

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0304

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDuplicateIndicator:Landroid/widget/TextView;

    const v0, 0x7f0a027f

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance v0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 86
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->getStreamEntities()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->getPlaylistDuplicates(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p2

    .line 87
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;)V

    .line 88
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 85
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public openCreatePlaylistDialog()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->getStreamEntities()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->getStreamEntities()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;->newInstance(Ljava/util/List;)Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
