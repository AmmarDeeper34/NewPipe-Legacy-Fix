.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->$r8$lambda$w5Uh72Rh2N3Z4bedAJRSA3Xbf7U(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
