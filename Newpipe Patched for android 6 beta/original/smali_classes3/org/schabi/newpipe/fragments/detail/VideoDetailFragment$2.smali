.class Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;
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

    .line 1307
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 1310
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1312
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1313
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->access$300(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isInMultiWindow(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1315
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->access$400(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1316
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {v2, v1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetHeightThumbnail(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;ILandroid/util/DisplayMetrics;)V

    .line 1317
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetpreDrawListener(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
