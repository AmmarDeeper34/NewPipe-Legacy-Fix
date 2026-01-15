.class public final synthetic Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;->f$2:I

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->$r8$lambda$ispRSIrhgp5DkUQKTYyH6Fb1MPk(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
