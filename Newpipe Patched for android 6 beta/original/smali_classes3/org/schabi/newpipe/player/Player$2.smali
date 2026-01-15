.class Lorg/schabi/newpipe/player/Player$2;
.super Landroid/content/BroadcastReceiver;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/Player;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/Player;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$2;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 782
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player$2;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/Player;->-$$Nest$monBroadcastReceived(Lorg/schabi/newpipe/player/Player;Landroid/content/Intent;)V

    return-void
.end method
