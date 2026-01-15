.class Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;
.super Lorg/schabi/newpipe/fragments/list/BaseListFragment$DefaultItemListOnScrolledDownListener;
.source "BaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useInitialItemListLoadScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$DefaultItemListOnScrolledDownListener;-><init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 362
    invoke-static {}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->access$200(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initItemListLoadScrollListener - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 331
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_0

    .line 334
    const-string p1, "Vertical scroll occurred"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->log(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useNormalItemListScrollListener()V

    return-void

    .line 339
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->access$000(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 340
    const-string p1, "Still loading data -> Skipping"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->log(Ljava/lang/String;)V

    return-void

    .line 343
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->hasMoreItems()Z

    move-result p1

    if-nez p1, :cond_2

    .line 344
    const-string p1, "No more items to load"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->log(Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useNormalItemListScrollListener()V

    return-void

    .line 349
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, -0x1

    .line 350
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 357
    :cond_3
    const-string p1, "Loading more data"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->log(Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->loadMoreItems()V

    return-void

    .line 351
    :cond_4
    :goto_0
    const-string p1, "View is scrollable"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->log(Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useNormalItemListScrollListener()V

    return-void
.end method
