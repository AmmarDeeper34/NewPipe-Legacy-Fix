.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "sr_Latn.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    const-string v0, "sekunde"

    const-string v1, "sekundi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minuta"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "sati"

    const-string v1, "sata"

    const-string v2, "sat"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v5, "Pre 5 dana"

    const-string v6, "Pre 6 dana"

    const-string v1, "Pre 1 dan"

    const-string v2, "Pre 2 dana"

    const-string v3, "Pre 3 dana"

    const-string v4, "Pre 4 dana"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "nedelje"

    const-string v1, "nedelju"

    const-string v2, "nedelja"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "meseci"

    const-string v1, "meseca"

    const-string v2, "mesec"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "godina"

    const-string v1, "godinu"

    const-string v2, "godine"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    return-object v0
.end method
