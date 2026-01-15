.class Lorg/schabi/newpipe/player/PlayQueueActivity$3;
.super Lorg/schabi/newpipe/player/playqueue/PlayQueueItemTouchCallback;
.source "PlayQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/PlayQueueActivity;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
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

    .line 303
    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$3;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemTouchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(II)V
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$3;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$3;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->move(II)V

    :cond_0
    return-void
.end method

.method public onSwiped(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$3;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->remove(I)V

    :cond_0
    return-void
.end method
