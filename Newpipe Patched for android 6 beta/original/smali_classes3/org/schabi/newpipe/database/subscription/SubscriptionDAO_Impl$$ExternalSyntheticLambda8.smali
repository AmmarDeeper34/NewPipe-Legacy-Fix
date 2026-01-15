.class public final synthetic Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    iput-object p2, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda8;->f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda8;->f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->$r8$lambda$HOisJetyHVpNo0_ZvXRyQ16ZyVw(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
