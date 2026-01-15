.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;->f$0:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;->f$0:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$i4JIeiX3zRjRj1ltH3DPHa4exoM(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
