.class final Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;
.super Lorg/schabi/newpipe/util/text/LongPressClickableSpan;
.source "TimestampLongPressClickableSpan.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final descriptionText:Ljava/lang/String;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final relatedInfoService:Lorg/schabi/newpipe/extractor/StreamingService;

.field private final relatedStreamUrl:Ljava/lang/String;

.field private final timestampMatchDTO:Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->descriptionText:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 41
    iput-object p4, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedInfoService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 42
    iput-object p5, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedStreamUrl:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->timestampMatchDTO:Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    return-void
.end method

.method private static getTimestampTextToCopy(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;)Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    if-ne p0, v0, :cond_0

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&t="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    if-eq p0, v0, :cond_3

    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->MediaCCC:Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    if-ne p0, v0, :cond_2

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?start="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_2
    invoke-virtual {p3}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart()I

    move-result p0

    .line 76
    invoke-virtual {p3}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd()I

    move-result p1

    .line 75
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#t="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 48
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedStreamUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedInfoService:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object v2, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->timestampMatchDTO:Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    .line 49
    invoke-virtual {v2}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds()I

    move-result v2

    .line 48
    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->playOnPopup(Landroid/content/Context;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;I)Z

    return-void
.end method

.method public onLongClick(Landroid/view/View;)V
    .locals 4

    .line 54
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedInfoService:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->relatedStreamUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->descriptionText:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->timestampMatchDTO:Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;->getTimestampTextToCopy(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
