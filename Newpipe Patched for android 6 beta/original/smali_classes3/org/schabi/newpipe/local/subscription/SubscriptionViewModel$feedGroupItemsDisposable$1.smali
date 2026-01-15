.class final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;
.super Ljava/lang/Object;
.source "SubscriptionViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$1;->apply(Ljava/util/List;Ljava/lang/Boolean;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;Ljava/lang/Boolean;)Lkotlin/Pair;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
