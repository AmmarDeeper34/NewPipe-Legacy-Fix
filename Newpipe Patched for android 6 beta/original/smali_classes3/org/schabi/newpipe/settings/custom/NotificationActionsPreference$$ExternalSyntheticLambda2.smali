.class public final synthetic Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Landroid/widget/CheckBox;

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->$r8$lambda$WWp40oruPIzhtpJU92TtcpMqvZc(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;ILandroid/widget/CheckBox;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
