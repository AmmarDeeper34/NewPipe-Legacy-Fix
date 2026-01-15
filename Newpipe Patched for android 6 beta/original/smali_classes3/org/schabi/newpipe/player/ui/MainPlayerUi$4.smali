.class Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;
.super Lorg/schabi/newpipe/player/playqueue/PlayQueueItemTouchCallback;
.source "MainPlayerUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
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

    .line 763
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemTouchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(II)V
    .locals 1

    .line 766
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->move(II)V

    :cond_0
    return-void
.end method

.method public onSwiped(I)V
    .locals 2

    .line 774
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 776
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->remove(I)V

    :cond_0
    return-void
.end method
