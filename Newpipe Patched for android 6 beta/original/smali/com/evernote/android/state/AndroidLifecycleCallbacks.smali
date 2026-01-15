.class final Lcom/evernote/android/state/AndroidLifecycleCallbacks;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "AndroidLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final INSTANCE:Lcom/evernote/android/state/AndroidLifecycleCallbacks;


# instance fields
.field mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;

    invoke-direct {v0}, Lcom/evernote/android/state/AndroidLifecycleCallbacks;-><init>()V

    sput-object v0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;->INSTANCE:Lcom/evernote/android/state/AndroidLifecycleCallbacks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p1, p2}, Lcom/evernote/android/state/StateSaver;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 30
    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_1

    .line 31
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1, p2}, Lcom/evernote/android/state/StateSaver;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    iget-boolean p1, p0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;->mEnabled:Z

    if-eqz p1, :cond_0

    .line 45
    invoke-static {p2, p3}, Lcom/evernote/android/state/StateSaver;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    iget-boolean p1, p0, Lcom/evernote/android/state/AndroidLifecycleCallbacks;->mEnabled:Z

    if-eqz p1, :cond_0

    .line 52
    invoke-static {p2, p3}, Lcom/evernote/android/state/StateSaver;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
