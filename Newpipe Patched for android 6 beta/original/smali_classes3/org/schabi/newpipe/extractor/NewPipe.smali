.class public abstract Lorg/schabi/newpipe/extractor/NewPipe;
.super Ljava/lang/Object;
.source "NewPipe.java"


# static fields
.field private static downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

.field private static preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

.field private static preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;


# direct methods
.method public static synthetic $r8$lambda$1AL6_XxuqEqj8T_v9naEiBofVbQ(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    .locals 3

    .line 83
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no service with the name = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$EP93ysBvR2vy_BPhclfWhsoqZ1k(I)Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    .locals 3

    .line 75
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no service with the id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$SrEIAgn-t-okZT8pGd6iwu9_Sw4(ILorg/schabi/newpipe/extractor/StreamingService;)Z
    .locals 0

    .line 73
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$q1LLZmNjUEAUgZEKIZNVV5DF8F4(Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;)Z
    .locals 0

    .line 81
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .locals 1

    .line 60
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

    return-object v0
.end method

.method public static getPreferredContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1

    .line 129
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    :cond_0
    return-object v0
.end method

.method public static getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 1

    .line 120
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-nez v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    :cond_0
    return-object v0
.end method

.method public static getService(I)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 2

    .line 72
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;-><init>(I)V

    .line 73
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda1;-><init>(I)V

    .line 75
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/StreamingService;

    return-object p0
.end method

.method public static getService(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 2

    .line 80
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/StreamingService;

    return-object p0
.end method

.method public static getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 4

    .line 88
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 89
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v2

    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-eq v2, v3, :cond_0

    return-object v1

    .line 93
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No service can handle the url = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getServices()Ljava/util/List;
    .locals 1

    .line 68
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lorg/schabi/newpipe/extractor/downloader/Downloader;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0

    .line 54
    sput-object p0, Lorg/schabi/newpipe/extractor/NewPipe;->downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

    .line 55
    sput-object p1, Lorg/schabi/newpipe/extractor/NewPipe;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 56
    sput-object p2, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-void
.end method

.method public static setupLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0

    .line 107
    sput-object p0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-eqz p1, :cond_0

    .line 110
    sput-object p1, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    sput-object p0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-void
.end method
