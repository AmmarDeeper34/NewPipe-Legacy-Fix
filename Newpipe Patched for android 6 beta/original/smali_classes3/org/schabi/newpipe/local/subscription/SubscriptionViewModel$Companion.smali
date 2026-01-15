.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;
.super Ljava/lang/Object;
.source "SubscriptionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldUseGridForSubscription(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lorg/schabi/newpipe/util/ThemeHelper;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    move-result-object p1

    .line 101
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
