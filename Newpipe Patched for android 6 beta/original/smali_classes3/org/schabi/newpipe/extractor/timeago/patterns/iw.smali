.class public Lorg/schabi/newpipe/extractor/timeago/patterns/iw;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "iw.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/iw;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-string v0, "\u05e9\u05e0\u05d9\u05d5\u05ea"

    const-string v1, "\u05e9\u05e0\u05d9\u05d9\u05d4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->SECONDS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u05d3\u05e7\u05d4"

    const-string v1, "\u05d3\u05e7\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->MINUTES:[Ljava/lang/String;

    .line 16
    const-string v0, "\u05e9\u05e2\u05d4"

    const-string v1, "\u05e9\u05e2\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->HOURS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u05d9\u05d5\u05dd"

    const-string v1, "\u05d9\u05de\u05d9\u05dd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->DAYS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u05e9\u05d1\u05d5\u05e2"

    const-string v1, "\u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->WEEKS:[Ljava/lang/String;

    .line 19
    const-string v0, "\u05d7\u05d5\u05d3\u05e9"

    const-string v1, "\u05d7\u05d5\u05d3\u05e9\u05d9\u05dd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->MONTHS:[Ljava/lang/String;

    .line 20
    const-string v0, "\u05e9\u05e0\u05d4"

    const-string v1, "\u05e9\u05e0\u05d9\u05dd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->YEARS:[Ljava/lang/String;

    .line 22
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/iw;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 29
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 30
    sget-object v1, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    const-string v2, "\u05e9\u05e2\u05ea\u05d9\u05d9\u05dd"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->putSpecialCase(Lj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    .line 31
    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    const-string v2, "\u05d9\u05d5\u05de\u05d9\u05d9\u05dd"

    invoke-virtual {p0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->putSpecialCase(Lj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    .line 32
    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    const-string v2, "\u05e9\u05d1\u05d5\u05e2\u05d9\u05d9\u05dd"

    invoke-virtual {p0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->putSpecialCase(Lj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    .line 33
    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    const-string v2, "\u05d7\u05d5\u05d3\u05e9\u05d9\u05d9\u05dd"

    invoke-virtual {p0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->putSpecialCase(Lj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    .line 34
    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    const-string v2, "\u05e9\u05e0\u05ea\u05d9\u05d9\u05dd"

    invoke-virtual {p0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->putSpecialCase(Lj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/iw;
    .locals 1

    .line 25
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/iw;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/iw;

    return-object v0
.end method
