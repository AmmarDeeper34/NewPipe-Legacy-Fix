.class public Lorg/schabi/newpipe/extractor/localization/DateWrapper;
.super Ljava/lang/Object;
.source "DateWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final instant:Lj$/time/Instant;

.field private final isApproximation:Z


# direct methods
.method public constructor <init>(Lj$/time/Instant;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/Instant;Z)V

    return-void
.end method

.method public constructor <init>(Lj$/time/Instant;Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->instant:Lj$/time/Instant;

    .line 39
    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation:Z

    return-void
.end method

.method public constructor <init>(Lj$/time/LocalDateTime;Z)V
    .locals 1

    .line 43
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/Instant;Z)V

    return-void
.end method

.method public constructor <init>(Lj$/time/OffsetDateTime;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/OffsetDateTime;Z)V

    return-void
.end method

.method public constructor <init>(Lj$/time/OffsetDateTime;Z)V
    .locals 0

    .line 30
    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toInstant()Lj$/time/Instant;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/Instant;Z)V

    return-void
.end method

.method public static fromInstant(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 4

    if-eqz p0, :cond_0

    .line 122
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-static {p0}, Lj$/time/Instant;->parse(Ljava/lang/CharSequence;)Lj$/time/Instant;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/Instant;)V
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromOffsetDateTime(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 4

    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-static {p0}, Lj$/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Lj$/time/OffsetDateTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/OffsetDateTime;)V
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getInstant()Lj$/time/Instant;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->instant:Lj$/time/Instant;

    return-object v0
.end method

.method public getLocalDateTime()Lj$/time/LocalDateTime;
    .locals 1

    .line 67
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->getLocalDateTime(Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDateTime(Lj$/time/ZoneId;)Lj$/time/LocalDateTime;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->instant:Lj$/time/Instant;

    invoke-static {v0, p1}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public isApproximation()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation:Z

    return v0
.end method

.method public offsetDateTime()Lj$/time/OffsetDateTime;
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->instant:Lj$/time/Instant;

    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/Instant;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->instant:Lj$/time/Instant;

    iget-boolean v1, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DateWrapper{instant="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isApproximation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
