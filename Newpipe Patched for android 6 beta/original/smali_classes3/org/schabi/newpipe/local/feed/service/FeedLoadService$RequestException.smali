.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;
.super Ljava/lang/Exception;
.source "FeedLoadService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestException"
.end annotation


# instance fields
.field private final subscriptionId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-wide p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;->subscriptionId:J

    return-void
.end method


# virtual methods
.method public final getSubscriptionId()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;->subscriptionId:J

    return-wide v0
.end method
