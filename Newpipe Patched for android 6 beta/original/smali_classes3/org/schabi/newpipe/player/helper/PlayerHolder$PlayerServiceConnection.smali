.class Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;
.super Ljava/lang/Object;
.source "PlayerHolder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/helper/PlayerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerServiceConnection"
.end annotation


# instance fields
.field private playAfterConnect:Z

.field final synthetic this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;


# direct methods
.method static bridge synthetic -$$Nest$fgetplayAfterConnect(Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->playAfterConnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputplayAfterConnect(Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->playAfterConnect:Z

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->playAfterConnect:Z

    return-void
.end method


# virtual methods
.method public doPlayAfterConnect(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->playAfterConnect:Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 183
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player service is connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    check-cast p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    .line 188
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fputplayerService(Lorg/schabi/newpipe/player/helper/PlayerHolder;Lorg/schabi/newpipe/player/PlayerService;)V

    .line 189
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetlistener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetplayerService(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;->onServiceConnected(Lorg/schabi/newpipe/player/PlayerService;)V

    .line 192
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$mstartPlayerListener(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V

    .line 195
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetplayerService(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$fgetplayerService(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Lorg/schabi/newpipe/player/PlayerService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/PlayerService;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 198
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->sendPlayerStartedEvent(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 173
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player service is disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$mgetCommonContext(Lorg/schabi/newpipe/player/helper/PlayerHolder;)Landroid/content/Context;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->-$$Nest$munbind(Lorg/schabi/newpipe/player/helper/PlayerHolder;Landroid/content/Context;)V

    return-void
.end method
