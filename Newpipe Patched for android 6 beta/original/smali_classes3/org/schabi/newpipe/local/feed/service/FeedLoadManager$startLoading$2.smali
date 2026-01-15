.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading(JZ)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 104
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$2;->test(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final test(Ljava/util/List;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
