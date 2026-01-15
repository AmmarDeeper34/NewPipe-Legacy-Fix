.class final synthetic Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$3;
.super Ljava/lang/Object;
.source "NotificationsSettingsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$3;->$tmp0:Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$3;->$tmp0:Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->access$onError(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;Ljava/lang/Throwable;)V

    return-void
.end method
