.class public abstract Lorg/schabi/newpipe/extractor/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# instance fields
.field private final downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

.field private forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

.field private forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

.field private final linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

.field private pageFetched:Z

.field private final service:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method protected constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 28
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->pageFetched:Z

    .line 36
    const-string v0, "service is null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Extractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 37
    const-string p1, "LinkHandler is null"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 38
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object p1

    const-string p2, "downloader is null"

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Extractor;->downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

    return-void
.end method


# virtual methods
.method protected assertPageFetched()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->pageFetched:Z

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page is not fetched. Make sure you call fetchPage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fetchPage()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->pageFetched:Z

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Extractor;->onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->pageFetched:Z

    return-void
.end method

.method public forceContentCountry(Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Extractor;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-void
.end method

.method public forceLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Extractor;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

    return-object v0
.end method

.method public getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    return v0
.end method

.method public getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    .locals 2

    .line 152
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getTimeAgoParser(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
.end method
