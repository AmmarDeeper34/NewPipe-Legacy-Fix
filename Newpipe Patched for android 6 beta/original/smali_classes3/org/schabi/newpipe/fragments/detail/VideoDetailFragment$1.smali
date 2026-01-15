.class Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$1;
.super Landroid/database/ContentObserver;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/os/Handler;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$1;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 335
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$1;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->access$000(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$1;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->access$100(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 336
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$1;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->access$200(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
