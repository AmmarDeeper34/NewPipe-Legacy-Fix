.class Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBottomPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

.field final synthetic val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

.field final synthetic val$peekHeight:I


# direct methods
.method public static synthetic $r8$lambda$IftlG4fx_wsffoEuSAgYV4c75PQ(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 2

    .line 2393
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2394
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;ILcom/google/android/material/appbar/AppBarLayout$Behavior;)V
    .locals 0

    .line 2339
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    iput p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$peekHeight:I

    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 2

    .line 2406
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbinding(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-static {p1, v0, v1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetOverlayLook(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 3

    .line 2342
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mupdateBottomSheetState(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 2344
    const-class p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 2346
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmoveFocusToMainFragment(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 2347
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmanageSpaceAtTheBottom(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 2349
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbottomSheetBehavior(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 2350
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mcleanUp(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    return-void

    .line 2373
    :cond_1
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmoveFocusToMainFragment(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 2374
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmanageSpaceAtTheBottom(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 2376
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbottomSheetBehavior(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$peekHeight:I

    invoke-virtual {p2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 2379
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetOverlayElementsClickable(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 2380
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2381
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4$$ExternalSyntheticLambda0;-><init>()V

    .line 2382
    invoke-virtual {p1, p2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2384
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbinding(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetOverlayLook(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V

    return-void

    .line 2353
    :cond_3
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmoveFocusToMainFragment(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 2354
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmanageSpaceAtTheBottom(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 2356
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbottomSheetBehavior(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$peekHeight:I

    invoke-virtual {p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 2359
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetOverlayElementsClickable(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 2360
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideSystemUiIfNeeded()V

    .line 2362
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 2363
    invoke-virtual {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    .line 2364
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 2365
    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$misFullscreen(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 2366
    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->access$500(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 2367
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda50;

    invoke-direct {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda50;-><init>()V

    .line 2368
    invoke-virtual {p1, p2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2370
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetbinding(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetOverlayLook(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V

    return-void

    .line 2388
    :cond_5
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$misFullscreen(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2389
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mshowSystemUi(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 2391
    :cond_6
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2392
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-static {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$fgetplayer(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)Lorg/schabi/newpipe/player/Player;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    :goto_0
    return-void
.end method
