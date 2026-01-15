.class public Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;
.super Ljava/lang/Object;
.source "AppendEvent.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;


# instance fields
.field private final amount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;->amount:I

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 16
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;->amount:I

    return v0
.end method

.method public type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 1

    .line 12
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->APPEND:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-object v0
.end method
