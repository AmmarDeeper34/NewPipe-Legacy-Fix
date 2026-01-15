.class Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;
.super Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;
.source "MainPlayerUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getQueueScrollListener()Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolledDown(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 709
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->fetch()V

    return-void

    .line 712
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    if-eqz p1, :cond_1

    .line 713
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    :cond_1
    return-void
.end method
