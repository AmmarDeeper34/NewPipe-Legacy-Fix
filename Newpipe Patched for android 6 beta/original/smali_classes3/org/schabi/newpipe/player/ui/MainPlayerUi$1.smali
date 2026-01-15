.class Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;
.super Landroid/database/ContentObserver;
.source "MainPlayerUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/ui/MainPlayerUi;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;Landroid/os/Handler;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 178
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    invoke-static {p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->-$$Nest$msetupScreenRotationButton(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    return-void
.end method
