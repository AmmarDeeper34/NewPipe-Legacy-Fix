.class public Lorg/schabi/newpipe/extractor/kiosk/KioskList;
.super Ljava/lang/Object;
.source "KioskList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;,
        Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;
    }
.end annotation


# instance fields
.field private defaultKiosk:Ljava/lang/String;

.field private forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

.field private forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

.field private final kioskList:Ljava/util/HashMap;

.field private final service:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->defaultKiosk:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    return-void
.end method


# virtual methods
.method public addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    new-instance v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;-><init>(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Kiosk with type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " already exists."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAvailableKiosks()Ljava/util/Set;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultKioskId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->defaultKiosk:Ljava/lang/String;

    return-object v0
.end method

.method public getExtractorById(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 1

    .line 105
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    if-eqz p2, :cond_2

    .line 109
    iget-object p3, p2, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->extractorFactory:Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object p2, p2, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 110
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-interface {p3, v0, p2, p1}, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;->createNewKiosk(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object p1

    .line 112
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/Extractor;->forceLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)V

    .line 115
    :cond_0
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/Extractor;->forceContentCountry(Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V

    :cond_1
    return-object p1

    .line 107
    :cond_2
    new-instance p2, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No kiosk found with the type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getExtractorByUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 1

    .line 129
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getExtractorByUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object p1

    return-object p1
.end method

.method public getExtractorByUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 3

    .line 136
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    .line 138
    iget-object v2, v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v0, v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getExtractorById(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object p1

    return-object p1

    .line 142
    :cond_1
    new-instance p2, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find a kiosk that fits to the url: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getListLinkHandlerFactoryByType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    return-object p1
.end method

.method public setDefaultKiosk(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->defaultKiosk:Ljava/lang/String;

    return-void
.end method
