.class public Lorg/schabi/newpipe/extractor/timeago/patterns/bs;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "bs.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bs;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "sekunde"

    const-string v1, "sekundu"

    const-string v2, "sekundi"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minute"

    const-string v1, "minutu"

    const-string v2, "minuta"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "sata"

    const-string v1, "sati"

    const-string v2, "h"

    const-string v3, "sat"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "dan"

    const-string v1, "dana"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "sedm."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "mjeseca"

    const-string v1, "mjeseci"

    const-string v2, "mj."

    const-string v3, "mjesec"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "godine"

    const-string v1, "godinu"

    const-string v2, "godina"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bs;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/bs;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bs;

    return-object v0
.end method
