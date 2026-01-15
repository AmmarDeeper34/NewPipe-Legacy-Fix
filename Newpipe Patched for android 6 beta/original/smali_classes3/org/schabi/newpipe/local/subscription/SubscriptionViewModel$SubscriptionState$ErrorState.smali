.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;
.super Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;
.source "SubscriptionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorState"
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->error:Ljava/lang/Throwable;

    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->error:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getError()Ljava/lang/Throwable;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$ErrorState;->error:Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorState(error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
