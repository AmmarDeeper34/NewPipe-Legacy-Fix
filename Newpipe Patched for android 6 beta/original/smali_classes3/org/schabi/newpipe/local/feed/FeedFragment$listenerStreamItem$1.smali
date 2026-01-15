.class public final Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;
.super Ljava/lang/Object;
.source "FeedFragment.kt"

# interfaces
.implements Lcom/xwray/groupie/OnItemClickListener;
.implements Lcom/xwray/groupie/OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/FeedFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    instance-of p2, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->access$isRefreshing$p(Lorg/schabi/newpipe/local/feed/FeedFragment;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 388
    check-cast p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->getStreamWithState()Lorg/schabi/newpipe/database/stream/StreamWithState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamWithState;->getStream()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p1

    .line 390
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->access$getFM(Lorg/schabi/newpipe/local/feed/FeedFragment;)Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 391
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 389
    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/util/NavigationHelper;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Lcom/xwray/groupie/Item;Landroid/view/View;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    instance-of p2, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->access$isRefreshing$p(Lorg/schabi/newpipe/local/feed/FeedFragment;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 398
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    check-cast p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->getStreamWithState()Lorg/schabi/newpipe/database/stream/StreamWithState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamWithState;->getStream()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->access$showInfoItemDialog(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
