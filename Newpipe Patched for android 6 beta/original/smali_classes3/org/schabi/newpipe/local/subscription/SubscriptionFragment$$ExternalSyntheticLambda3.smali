.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    check-cast p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->$r8$lambda$iXv0a-kilsORf5ep5PGkW-Ou77E(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
