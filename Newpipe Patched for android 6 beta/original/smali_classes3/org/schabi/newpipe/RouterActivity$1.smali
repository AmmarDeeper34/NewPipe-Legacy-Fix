.class Lorg/schabi/newpipe/RouterActivity$1;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "RouterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/RouterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/RouterActivity;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/RouterActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$1;->this$0:Lorg/schabi/newpipe/RouterActivity;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 158
    instance-of p2, p2, Landroidx/fragment/app/DialogFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity$1;->this$0:Lorg/schabi/newpipe/RouterActivity;

    invoke-virtual {p1}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    :cond_0
    return-void
.end method
