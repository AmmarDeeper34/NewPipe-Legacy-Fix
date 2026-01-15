.class Lorg/schabi/newpipe/download/DownloadActivity$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/download/DownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/download/DownloadActivity;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/download/DownloadActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadActivity$1;->this$0:Lorg/schabi/newpipe/download/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadActivity$1;->this$0:Lorg/schabi/newpipe/download/DownloadActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/download/DownloadActivity;->-$$Nest$mupdateFragments(Lorg/schabi/newpipe/download/DownloadActivity;)V

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadActivity$1;->this$0:Lorg/schabi/newpipe/download/DownloadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
