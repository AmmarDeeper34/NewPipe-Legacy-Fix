.class public Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "CommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private emptyStateDesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 28
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static getInstance(ILjava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;
    .locals 1

    .line 34
    new-instance v0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;-><init>()V

    .line 35
    invoke-virtual {v0, p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 1

    .line 111
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object v0
.end method

.method public bridge synthetic handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 0

    .line 27
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->handleResult(Lorg/schabi/newpipe/extractor/comments/CommentsInfo;)V

    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/extractor/comments/CommentsInfo;)V
    .locals 7

    .line 87
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->emptyStateDesc:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->isCommentsDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1200a8

    goto :goto_0

    :cond_0
    const p1, 0x7f120300

    .line 89
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-wide/16 v4, 0x96

    const v6, 0x3d75c28f    # 0.06f

    const-wide/16 v2, 0x78

    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/ktx/ViewUtils;->slideUp(Landroid/view/View;JJF)V

    .line 95
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0139

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->emptyStateDesc:Landroid/widget/TextView;

    return-void
.end method

.method protected loadMoreItemsLogic()Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 73
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    check-cast v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMoreCommentItems(ILorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method protected loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 78
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getCommentsInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0059

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 63
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->onDestroy()V

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public scrollToComment(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
