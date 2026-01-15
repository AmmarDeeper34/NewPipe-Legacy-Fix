.class Lorg/schabi/newpipe/views/FocusOverlayView$1;
.super Landroid/os/Handler;
.source "FocusOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/views/FocusOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/views/FocusOverlayView;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/views/FocusOverlayView;Landroid/os/Looper;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->this$0:Lorg/schabi/newpipe/views/FocusOverlayView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->this$0:Lorg/schabi/newpipe/views/FocusOverlayView;

    invoke-static {p1}, Lorg/schabi/newpipe/views/FocusOverlayView;->-$$Nest$mupdateRect(Lorg/schabi/newpipe/views/FocusOverlayView;)V

    return-void
.end method
