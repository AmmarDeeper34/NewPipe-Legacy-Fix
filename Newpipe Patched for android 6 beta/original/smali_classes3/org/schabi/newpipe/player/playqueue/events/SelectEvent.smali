.class public Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;
.super Ljava/lang/Object;
.source "SelectEvent.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;


# instance fields
.field private final newIndex:I

.field private final oldIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;->oldIndex:I

    .line 9
    iput p2, p0, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;->newIndex:I

    return-void
.end method


# virtual methods
.method public getNewIndex()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;->newIndex:I

    return v0
.end method

.method public getOldIndex()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;->oldIndex:I

    return v0
.end method

.method public type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 1

    .line 14
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->SELECT:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-object v0
.end method
