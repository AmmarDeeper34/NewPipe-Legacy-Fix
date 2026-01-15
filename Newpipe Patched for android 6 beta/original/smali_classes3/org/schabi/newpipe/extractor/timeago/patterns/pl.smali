.class public Lorg/schabi/newpipe/extractor/timeago/patterns/pl;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "pl.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

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
    const-string v0, "sekundy"

    const-string v1, "sekund\u0119"

    const-string v2, "sekund"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minuty"

    const-string v1, "minut\u0119"

    const-string v2, "minut"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "godziny"

    const-string v1, "godzin\u0119"

    const-string v2, "godzin"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "dni"

    const-string v1, "dzie\u0144"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "tydzie\u0144"

    const-string v1, "tygodnie"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "miesi\u0105ce"

    const-string v1, "miesi\u0119cy"

    const-string v2, "miesi\u0105c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "lata"

    const-string v1, "rok"

    const-string v2, "lat"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/pl;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    return-object v0
.end method
