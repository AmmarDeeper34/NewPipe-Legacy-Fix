.class Lorg/schabi/newpipe/player/PlayQueueActivity$2;
.super Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;
.source "PlayQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/PlayQueueActivity;->getQueueScrollListener()Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;
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

    .line 289
    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$2;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolledDown(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 292
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$2;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$2;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$2;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 294
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$2;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->fetch()V

    return-void

    .line 296
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$2;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetqueueControlBinding(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    return-void
.end method
