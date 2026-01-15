.class public Lorg/schabi/newpipe/extractor/timeago/patterns/hr;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "hr.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hr;

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
    const-string v0, "sekundi"

    const-string v1, "sekundu"

    const-string v2, "sekunde"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minute"

    const-string v1, "minutu"

    const-string v2, "minuta"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "sata"

    const-string v1, "sati"

    const-string v2, "sat"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "dan"

    const-string v1, "dana"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "tjedan"

    const-string v1, "tjedna"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "mjeseca"

    const-string v1, "mjeseci"

    const-string v2, "mjesec"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "godine"

    const-string v1, "godinu"

    const-string v2, "godina"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hr;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/hr;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hr;

    return-object v0
.end method
