.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSuggestionExtractor;
.super Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
.source "PeertubeSuggestionExtractor.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-void
.end method


# virtual methods
.method public suggestionList(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 16
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method
