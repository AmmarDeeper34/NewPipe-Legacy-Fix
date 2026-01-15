.class Lorg/schabi/newpipe/player/PlayQueueActivity$4;
.super Ljava/lang/Object;
.source "PlayQueueActivity.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/PlayQueueActivity;->getOnSelectedListener()Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/PlayQueueActivity;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public held(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V
    .locals 7

    .line 331
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v1

    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 333
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 332
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/QueueItemMenuUtil;->openPopupMenu(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;ZLandroidx/fragment/app/FragmentManager;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStartDrag(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/player/PlayQueueActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/player/PlayQueueActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public selected(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V
    .locals 0

    .line 324
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p2}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 325
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p2}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/Player;->selectQueueItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    :cond_0
    return-void
.end method
