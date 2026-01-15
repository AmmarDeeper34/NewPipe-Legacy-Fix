.class public Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SelectFeedGroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;,
        Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;
    }
.end annotation


# instance fields
.field private emptyView:Landroid/widget/TextView;

.field private feedGroups:Ljava/util/List;

.field private onSelectedListener:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetfeedGroups(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->clickedItem(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisplayFeedGroups(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->displayFeedGroups(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    return-void
.end method

.method private clickedItem(I)V
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;

    .line 124
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableResource()I

    move-result p1

    .line 124
    invoke-interface {v0, v1, v2, p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;->onFeedGroupSelected(Ljava/lang/Long;Ljava/lang/String;I)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private displayFeedGroups(Ljava/util/List;)V
    .locals 2

    .line 135
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    .line 136
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 141
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getFeedGroupObserver()Lio/reactivex/rxjava3/core/Observer;
    .locals 1

    .line 146
    new-instance v0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$1;-><init>(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/ThemeHelper;->getMinWidthDialogTheme(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d00f6

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01fb

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    new-instance p2, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter;-><init>(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;Lorg/schabi/newpipe/settings/SelectFeedGroupFragment-IA;)V

    .line 90
    iget-object p3, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0a0313

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0a013b

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->emptyView:Landroid/widget/TextView;

    .line 94
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/AppDatabase;->feedGroupDAO()Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/rxjava3/core/Flowable;->toObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 101
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 102
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 103
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->getFeedGroupObserver()Lio/reactivex/rxjava3/core/Observer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-object p1
.end method

.method public setOnSelectedListener(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$OnSelectedListener;

    return-void
.end method
