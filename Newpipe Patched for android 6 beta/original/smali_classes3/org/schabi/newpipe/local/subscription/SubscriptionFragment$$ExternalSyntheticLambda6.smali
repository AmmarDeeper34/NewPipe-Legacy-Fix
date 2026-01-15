.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->$r8$lambda$CeJDN4pdUFEo_YvBMUoiwBdz6-s(Ljava/lang/Runnable;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
