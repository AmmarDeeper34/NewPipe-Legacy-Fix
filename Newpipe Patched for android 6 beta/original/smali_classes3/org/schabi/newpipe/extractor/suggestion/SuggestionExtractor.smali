.class public abstract Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
.super Ljava/lang/Object;
.source "SuggestionExtractor.java"


# instance fields
.field private forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

.field private forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

.field private final service:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    return-void
.end method


# virtual methods
.method public getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getService()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    return-object v0
.end method

.method public abstract suggestionList(Ljava/lang/String;)Ljava/util/List;
.end method
