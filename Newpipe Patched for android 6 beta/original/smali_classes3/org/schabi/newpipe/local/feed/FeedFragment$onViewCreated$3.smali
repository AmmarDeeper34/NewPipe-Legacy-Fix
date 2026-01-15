.class public final Lorg/schabi/newpipe/local/feed/FeedFragment$onViewCreated$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FeedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/FeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$onViewCreated$3;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 146
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$onViewCreated$3;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->access$tryGetNewItemsLoadedButton(Lorg/schabi/newpipe/local/feed/FeedFragment;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$onViewCreated$3;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideNewItemsLoaded$default(Lorg/schabi/newpipe/local/feed/FeedFragment;ZJILjava/lang/Object;)V

    :cond_0
    return-void
.end method
