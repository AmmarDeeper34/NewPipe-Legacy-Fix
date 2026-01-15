.class Lorg/schabi/newpipe/views/FocusOverlayView$2;
.super Landroidx/appcompat/view/WindowCallbackWrapper;
.source "FocusOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/views/FocusOverlayView;->setupOverlay(Landroid/view/Window;Lorg/schabi/newpipe/views/FocusOverlayView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$overlay:Lorg/schabi/newpipe/views/FocusOverlayView;


# direct methods
.method constructor <init>(Landroid/view/Window$Callback;Lorg/schabi/newpipe/views/FocusOverlayView;)V
    .locals 0

    .line 235
    iput-object p2, p0, Lorg/schabi/newpipe/views/FocusOverlayView$2;->val$overlay:Lorg/schabi/newpipe/views/FocusOverlayView;

    invoke-direct {p0, p1}, Landroidx/appcompat/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 238
    invoke-super {p0, p1}, Landroidx/appcompat/view/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 239
    iget-object v1, p0, Lorg/schabi/newpipe/views/FocusOverlayView$2;->val$overlay:Lorg/schabi/newpipe/views/FocusOverlayView;

    invoke-static {v1, p1}, Lorg/schabi/newpipe/views/FocusOverlayView;->-$$Nest$monKey(Lorg/schabi/newpipe/views/FocusOverlayView;Landroid/view/KeyEvent;)V

    return v0
.end method
