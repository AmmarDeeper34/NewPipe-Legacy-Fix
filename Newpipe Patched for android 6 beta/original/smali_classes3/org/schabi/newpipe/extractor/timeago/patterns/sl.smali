.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sl;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "sl.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    const-string v0, "sekundami"

    const-string v1, "sekundo"

    const-string v2, "sekundama"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minutami"

    const-string v1, "minuto"

    const-string v2, "minutama"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "urami"

    const-string v1, "uro"

    const-string v2, "urama"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "dnevi"

    const-string v1, "dnevoma"

    const-string v2, "dnem"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "tednom"

    const-string v1, "tednoma"

    const-string v2, "tedni"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "mesecema"

    const-string v1, "meseci"

    const-string v2, "mesecem"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "letom"

    const-string v1, "letoma"

    const-string v2, "leti"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sl;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    return-object v0
.end method
