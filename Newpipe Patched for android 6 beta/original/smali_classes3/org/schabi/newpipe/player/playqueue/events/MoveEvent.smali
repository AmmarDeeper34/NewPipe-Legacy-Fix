.class public Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;
.super Ljava/lang/Object;
.source "MoveEvent.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;


# instance fields
.field private final fromIndex:I

.field private final toIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;->fromIndex:I

    .line 9
    iput p2, p0, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;->toIndex:I

    return-void
.end method


# virtual methods
.method public getFromIndex()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;->fromIndex:I

    return v0
.end method

.method public getToIndex()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;->toIndex:I

    return v0
.end method

.method public type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 1

    .line 14
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->MOVE:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-object v0
.end method
