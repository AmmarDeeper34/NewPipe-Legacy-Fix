.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public final synthetic f$2:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

.field public final synthetic f$3:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$0:Lorg/schabi/newpipe/player/Player;

    iput-object p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iput-object p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$2:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    iput-object p4, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$3:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$0:Lorg/schabi/newpipe/player/Player;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iget-object v2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$2:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    iget-object v3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;->f$3:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$axAkjYCHg1GylYvXSb8zoEbvF3s(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
