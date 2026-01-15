.class public Lorg/schabi/newpipe/ExitActivity;
.super Landroid/app/Activity;
.source "ExitActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static exitAndRemoveFromRecentApps(Landroid/app/Activity;)V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/ExitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10818000

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 48
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->restartApp(Landroid/app/Activity;)V

    return-void
.end method
