.class Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;
.super Ljava/lang/Object;
.source "RouterActivity.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->runOnVisible(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

.field final synthetic val$runnable:Ljava/util/function/Consumer;


# direct methods
.method public static synthetic $r8$lambda$2bmsw2IvykAWUn-EN-Twc1kGtKc(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->lambda$onResume$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QG8t64yDBH6h--b6nN2RFVKY7Mk(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->lambda$onResume$1(Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCIVbguPZIoAJBDQB5gyxHoN2x4(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->lambda$onResume$0(Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->val$runnable:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onResume$0(Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 763
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 764
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->-$$Nest$minFlight(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Z)V

    return-void
.end method

.method private synthetic lambda$onResume$1(Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 762
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onResume$2()V
    .locals 2

    .line 766
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->-$$Nest$minFlight(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Z)V

    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 760
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 761
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->-$$Nest$mgetActivityContext(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;)Lj$/util/Optional;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->val$runnable:Ljava/util/function/Consumer;

    new-instance v1, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;)V

    invoke-virtual {p1, v1, v0}, Lj$/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
