.class Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;
.super Ljava/lang/Object;
.source "MainPlayerUi.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getOnSelectedListener()Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;
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

    .line 783
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public held(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V
    .locals 8

    .line 791
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 793
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 794
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v2

    .line 795
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object v7, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    .line 794
    invoke-static/range {v2 .. v7}, Lorg/schabi/newpipe/QueueItemMenuUtil;->openPopupMenu(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;ZLandroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStartDrag(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-static {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-static {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public selected(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V
    .locals 0

    .line 786
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$5;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object p2, p2, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/Player;->selectQueueItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    return-void
.end method
