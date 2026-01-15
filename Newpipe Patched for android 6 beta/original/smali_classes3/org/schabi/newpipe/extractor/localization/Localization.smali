.class public Lorg/schabi/newpipe/extractor/localization/Localization;
.super Ljava/lang/Object;
.source "Localization.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final languageCode:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$LAfID9NdEfpfPIAL1Viti7bSgXA(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a localization code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/Localization;

    const-string v1, "en"

    const-string v2, "GB"

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public static fromLocale(Ljava/util/Locale;)Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 2

    .line 75
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/Localization;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromLocalizationCode(Ljava/lang/String;)Lj$/util/Optional;
    .locals 1

    .line 52
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/LocaleCompat;->forLanguageTag(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/localization/Localization$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/localization/Localization$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static getLocaleFromThreeLetterCode(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6

    .line 124
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 127
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    return-object p0

    .line 133
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get Locale from this three letter language code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs listFrom([Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 38
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/localization/Localization;->fromLocalizationCode(Ljava/lang/String;)Lj$/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/schabi/newpipe/extractor/localization/Localization$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lorg/schabi/newpipe/extractor/localization/Localization$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, v5}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/extractor/localization/Localization;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 102
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 104
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    .line 105
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizationCode()Ljava/lang/String;
    .locals 4

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->languageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/Localization;->countryCode:Ljava/lang/String;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 90
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Localization["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
