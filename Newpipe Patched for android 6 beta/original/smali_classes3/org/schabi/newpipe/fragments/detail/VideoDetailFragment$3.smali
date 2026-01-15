.class Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 1411
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_SHOW_MAIN_PLAYER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 p2, 0x5

    packed-switch v1, :pswitch_data_0

    return-void

    .line 1419
    :pswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbottomSheetBehavior(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void

    .line 1416
    :pswitch_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbottomSheetBehavior(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void

    .line 1423
    :pswitch_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbottomSheetBehavior(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    if-ne v0, p2, :cond_3

    .line 1424
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbottomSheetBehavior(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 1427
    :cond_3
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetplayerHolder(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object p2

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->setListener(Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 1428
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$3;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetplayerHolder(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->tryBindIfNeeded(Landroid/content/Context;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x798f973a -> :sswitch_2
        -0x65801318 -> :sswitch_1
        -0x36a75053 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
