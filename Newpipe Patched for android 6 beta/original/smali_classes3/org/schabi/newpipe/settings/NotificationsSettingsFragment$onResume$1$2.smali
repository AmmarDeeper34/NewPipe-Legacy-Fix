.class public final Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$1$2;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "NotificationsSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$1$2;->this$0:Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;

    .line 86
    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 1

    const-string v0, "transientBottomBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar$Callback;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    .line 89
    iget-object p1, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$1$2;->this$0:Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->access$setNotificationWarningSnackbar$p(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 86
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$1$2;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
