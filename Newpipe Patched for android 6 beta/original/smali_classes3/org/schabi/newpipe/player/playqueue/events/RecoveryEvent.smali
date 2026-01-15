.class public Lorg/schabi/newpipe/player/playqueue/events/RecoveryEvent;
.super Ljava/lang/Object;
.source "RecoveryEvent.java"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;


# instance fields
.field private final index:I

.field private final position:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lorg/schabi/newpipe/player/playqueue/events/RecoveryEvent;->index:I

    .line 9
    iput-wide p2, p0, Lorg/schabi/newpipe/player/playqueue/events/RecoveryEvent;->position:J

    return-void
.end method


# virtual methods
.method public type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;
    .locals 1

    .line 14
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;->RECOVERY:Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    return-object v0
.end method
