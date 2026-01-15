.class public final synthetic Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->$r8$lambda$fg0v0HdEJbyAtHbgzpLpbmyT-ao(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;Landroid/view/View;I)Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    move-result-object p1

    return-object p1
.end method
