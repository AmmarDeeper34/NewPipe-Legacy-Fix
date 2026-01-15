.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;->f$0:Lorg/schabi/newpipe/player/Player;

    iput-wide p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;->f$0:Lorg/schabi/newpipe/player/Player;

    iget-wide v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;->f$1:J

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/player/Player;->$r8$lambda$M5kntxaYnBMZ6ikF0UVR2jJylM8(Lorg/schabi/newpipe/player/Player;JLorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
