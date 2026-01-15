.class public final Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "FeedGroupCarouselItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem$Companion;


# instance fields
.field private final carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

.field private carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listState:Landroid/os/Parcelable;

.field private listViewMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->Companion:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/xwray/groupie/GroupAdapter;Z)V
    .locals 1

    const-string v0, "carouselAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 17
    iput-boolean p2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listViewMode:Z

    return-void
.end method

.method private final updateViewMode(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;)V
    .locals 3

    .line 68
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listViewMode:Z

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/16 v2, 0x70

    invoke-static {v2, v0}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(ILandroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/schabi/newpipe/util/ThemeHelper;->getGridSpanCount(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 71
    :goto_0
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 77
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 15
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->bind(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;I)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V
    .locals 0

    .line 15
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->bind(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;ILjava/util/List;)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;I)V
    .locals 0

    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listState:Landroid/os/Parcelable;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;ILjava/util/List;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->updateViewMode(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;)V

    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d0050

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->updateViewMode(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;)V

    return-object p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 35
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listState:Landroid/os/Parcelable;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public final setListViewMode(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listViewMode:Z

    return-void
.end method

.method public bridge synthetic unbind(Lcom/xwray/groupie/GroupieViewHolder;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->unbind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;)V

    return-void
.end method

.method public unbind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Lcom/xwray/groupie/Item;->unbind(Lcom/xwray/groupie/GroupieViewHolder;)V

    .line 64
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listState:Landroid/os/Parcelable;

    return-void
.end method
