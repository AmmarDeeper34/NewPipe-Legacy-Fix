.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;->f$1:Z

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
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    iget-boolean v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->$r8$lambda$wry0VUk0NJ0IkkFLCIYyeoUA58w(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;ZLorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

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
