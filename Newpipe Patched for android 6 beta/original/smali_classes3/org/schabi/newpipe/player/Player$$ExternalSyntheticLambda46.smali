.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;->f$0:Lorg/schabi/newpipe/player/Player;

    iput-object p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;->f$1:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$and(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/IntPredicate;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/function/IntPredicate$-CC;->$default$negate(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$or(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(I)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;->f$0:Lorg/schabi/newpipe/player/Player;

    iget-object v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;->f$1:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$eoGHsnvmVujpwbSBn1aA410bTN4(Lorg/schabi/newpipe/player/Player;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)Z

    move-result p1

    return p1
.end method
