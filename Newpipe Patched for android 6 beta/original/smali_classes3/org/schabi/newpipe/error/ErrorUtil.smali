.class public abstract Lorg/schabi/newpipe/error/ErrorUtil;
.super Ljava/lang/Object;
.source "ErrorUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/error/ErrorUtil$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    return-void
.end method

.method public static final createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static final openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static final showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static final showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static final showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
