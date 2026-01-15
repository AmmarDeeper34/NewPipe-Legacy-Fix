.class public Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;
.super Ljava/lang/Object;
.source "ErrorEvent.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;


# instance fields
.field private final errorIndex:I

.field private final queueIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;->errorIndex:I

    .line 9
    iput p2, p0, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;->queueIndex:I

    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;->errorIndex:I

    return v0
.end method

.method public getQueueIndex()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;->queueIndex:I

    return v0
.end method

.method public type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 1

    .line 14
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->ERROR:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-object v0
.end method
