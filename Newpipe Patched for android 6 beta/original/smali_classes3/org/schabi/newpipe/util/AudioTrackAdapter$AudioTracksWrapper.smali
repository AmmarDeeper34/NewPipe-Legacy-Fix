.class public Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;
.super Ljava/lang/Object;
.source "AudioTrackAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/AudioTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioTracksWrapper"
.end annotation


# instance fields
.field private final tracksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$X8B23mA14Ow5dU-YT2afS0YvrDA(Landroid/content/Context;Ljava/util/List;)Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    .locals 1

    .line 83
    new-instance v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    invoke-direct {v0, p1, p0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 83
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->tracksList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTracksList()Ljava/util/List;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->tracksList:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->tracksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
