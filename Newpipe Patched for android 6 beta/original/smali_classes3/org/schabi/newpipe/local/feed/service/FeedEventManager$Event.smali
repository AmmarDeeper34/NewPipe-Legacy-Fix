.class public abstract Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;
.super Ljava/lang/Object;
.source "FeedEventManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/service/FeedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;,
        Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;,
        Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;,
        Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;-><init>()V

    return-void
.end method
