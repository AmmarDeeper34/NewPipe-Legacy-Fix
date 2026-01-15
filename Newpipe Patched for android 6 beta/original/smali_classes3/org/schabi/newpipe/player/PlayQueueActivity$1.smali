.class Lorg/schabi/newpipe/player/PlayQueueActivity$1;
.super Ljava/lang/Object;
.source "PlayQueueActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/PlayQueueActivity;->getServiceConnection()Landroid/content/ServiceConnection;
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

    .line 214
    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 222
    invoke-static {}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player service is connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    instance-of p1, p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    check-cast p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/PlayerService;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fputplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;Lorg/schabi/newpipe/player/Player;)V

    .line 228
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 232
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$mbuildComponents(Lorg/schabi/newpipe/player/PlayQueueActivity;)V

    .line 233
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/Player;->setActivityListener(Lorg/schabi/newpipe/player/event/PlayerEventListener;)V

    :cond_2
    return-void

    .line 229
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;->this$0:Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$munbind(Lorg/schabi/newpipe/player/PlayQueueActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 217
    invoke-static {}, Lorg/schabi/newpipe/player/PlayQueueActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player service is disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
