.class final synthetic Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "NotificationModeConfigFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;->$tmp0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;->$tmp0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->update(Ljava/util/List;)V

    return-void
.end method
