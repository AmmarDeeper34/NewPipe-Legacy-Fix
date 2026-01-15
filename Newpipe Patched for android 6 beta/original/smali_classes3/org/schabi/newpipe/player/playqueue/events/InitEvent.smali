.class public Lorg/schabi/newpipe/player/playqueue/events/InitEvent;
.super Ljava/lang/Object;
.source "InitEvent.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 1

    .line 6
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->INIT:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-object v0
.end method
