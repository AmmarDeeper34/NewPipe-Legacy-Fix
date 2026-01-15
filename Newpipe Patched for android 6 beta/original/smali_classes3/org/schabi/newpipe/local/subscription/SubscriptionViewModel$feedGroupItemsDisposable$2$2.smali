.class final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SubscriptionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2;->apply(Lkotlin/Pair;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 0
    const-string v4, "<init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$feedGroupItemsDisposable$2$2;->invoke(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;-><init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    return-object v0
.end method
