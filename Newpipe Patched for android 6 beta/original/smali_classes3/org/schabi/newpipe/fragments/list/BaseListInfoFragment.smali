.class public abstract Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListFragment;
.source "BaseListInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        "L:Lorg/schabi/newpipe/extractor/ListInfo;",
        ">",
        "Lorg/schabi/newpipe/fragments/list/BaseListFragment<",
        "T",
        "L;",
        "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;",
        ">;"
    }
.end annotation


# instance fields
.field protected currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

.field protected currentNextPage:Lorg/schabi/newpipe/extractor/Page;

.field protected currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

.field private final errorUserAction:Lorg/schabi/newpipe/error/UserAction;

.field protected name:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field protected serviceId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field protected url:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WKA_I1ALhdqCmJ3Zb_cvh1Bm-0k(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->lambda$loadMoreItems$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_EhdQAhrQEFpCloH-pcr41lXEBY(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->allowDownwardFocusScroll()V

    return-void
.end method

.method public static synthetic $r8$lambda$jP3S7xgoSQGsTQZzHKTelUOT9LU(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->lambda$startLoading$0(Lorg/schabi/newpipe/extractor/ListInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-gC88cAEEExHNZPTn5CCKmbqzM(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->lambda$loadMoreItems$2(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zENmVJNOuvgGvoHkgog3SWqkdPk(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->lambda$startLoading$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected constructor <init>(Lorg/schabi/newpipe/error/UserAction;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 51
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->errorUserAction:Lorg/schabi/newpipe/error/UserAction;

    return-void
.end method

.method private allowDownwardFocusScroll()V
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v1, v0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->setFocusScrollAllowed(Z)V

    :cond_0
    return-void
.end method

.method private dynamicallyShowErrorPanelOrSnackbar(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private forbidDownwardFocusScroll()V
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v1, v0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->setFocusScrollAllowed(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadMoreItems$2(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleNextItems(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V

    return-void
.end method

.method private synthetic lambda$loadMoreItems$3(Ljava/lang/Throwable;)V
    .locals 6

    .line 186
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->errorUserAction:Lorg/schabi/newpipe/error/UserAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading more items: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->dynamicallyShowErrorPanelOrSnackbar(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$startLoading$0(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 151
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 152
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 153
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    return-void
.end method

.method private synthetic lambda$startLoading$1(Ljava/lang/Throwable;)V
    .locals 6

    .line 155
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->errorUserAction:Lorg/schabi/newpipe/error/UserAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start loading: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method


# virtual methods
.method protected doInitialLoadLogic()V
    .locals 2

    .line 116
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "doInitialLoadLogic() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->startLoading(Z)V

    return-void

    .line 122
    :cond_1
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    return-void
.end method

.method public handleNextItems(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V
    .locals 7

    .line 204
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->handleNextItems(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 207
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->addInfoItemList(Ljava/util/List;)V

    .line 209
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->hasMoreItems()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 211
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->errorUserAction:Lorg/schabi/newpipe/error/UserAction;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get next items of: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->dynamicallyShowErrorPanelOrSnackbar(Lorg/schabi/newpipe/error/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 7

    .line 228
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleResult(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    .line 231
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->addInfoItemList(Ljava/util/List;)V

    .line 236
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->hasMoreItems()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->hasMoreItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->loadMoreItems()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 241
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->showEmptyState()V

    .line 245
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda5;

    const-class v2, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 251
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->errorUserAction:Lorg/schabi/newpipe/error/UserAction;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start loading: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->dynamicallyShowErrorPanelOrSnackbar(Lorg/schabi/newpipe/error/ErrorInfo;)V

    :cond_3
    return-void
.end method

.method protected hasMoreItems()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    move-result v0

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->hasMoreItems()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    return-void
.end method

.method protected loadMoreItems()V
    .locals 3

    .line 170
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 176
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->forbidDownwardFocusScroll()V

    .line 178
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->loadMoreItemsLogic()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 179
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 180
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;)V

    .line 181
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;)V

    new-instance v2, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;)V

    .line 182
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method protected abstract loadMoreItemsLogic()Lio/reactivex/rxjava3/core/Single;
.end method

.method protected abstract loadResult(Z)Lio/reactivex/rxjava3/core/Single;
.end method

.method public onDestroy()V
    .locals 1

    .line 84
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onDestroy()V

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 63
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 71
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onResume()V

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->hasMoreItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->loadMoreItems()V

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->doInitialLoadLogic()V

    :cond_1
    return-void
.end method

.method public readFrom(Ljava/util/Queue;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->readFrom(Ljava/util/Queue;)V

    .line 106
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/ListInfo;

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 107
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/Page;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    return-void
.end method

.method protected setInitialData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 277
    iput p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 278
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 279
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    return-void
.end method

.method public showEmptyState()V
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    if-ne v0, v1, :cond_0

    const v0, 0x7f120309

    .line 264
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->setEmptyStateMessage(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f12030e

    .line 266
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->setEmptyStateMessage(I)V

    .line 269
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showEmptyState()V

    return-void
.end method

.method public startLoading(Z)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->startLoading(Z)V

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 143
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->loadResult(Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 147
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 148
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;)V

    new-instance v1, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;)V

    .line 149
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public writeTo(Ljava/util/Queue;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->writeTo(Ljava/util/Queue;)V

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
