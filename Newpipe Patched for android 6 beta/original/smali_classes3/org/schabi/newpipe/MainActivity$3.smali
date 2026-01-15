.class Lorg/schabi/newpipe/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/MainActivity;->openMiniPlayerUponPlayerStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/MainActivity;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/MainActivity;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$3;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 887
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 889
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->isPlayerOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 890
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$3;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/MainActivity;->-$$Nest$mopenMiniPlayerIfMissing(Lorg/schabi/newpipe/MainActivity;)V

    .line 893
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$3;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/MainActivity;->-$$Nest$fgetbroadcastReceiver(Lorg/schabi/newpipe/MainActivity;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 894
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$3;->this$0:Lorg/schabi/newpipe/MainActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/schabi/newpipe/MainActivity;->-$$Nest$fputbroadcastReceiver(Lorg/schabi/newpipe/MainActivity;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
