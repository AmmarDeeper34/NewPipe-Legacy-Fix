.class public Lorg/schabi/newpipe/extractor/timeago/patterns/km;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "km.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/km;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "\u179c\u17b7\u1793\u17b6\u1791\u17b8\u200b\u1798\u17bb\u1793"

    const-string v1, "\u17e1\u179c\u17b7\u1793\u17b6\u1791\u17b8\u1798\u17bb\u1793"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u1793\u17b6\u1791\u17b8\u1798\u17bb\u1793"

    const-string v1, "\u17e1\u1793\u17b6\u1791\u17b8\u1798\u17bb\u1793"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u1798\u17c9\u17c4\u1784\u200b\u1798\u17bb\u1793"

    const-string v1, "\u17e1\u1798\u17c9\u17c4\u1784\u200b\u1798\u17bb\u1793"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u1790\u17d2\u1784\u17c3\u1798\u17bb\u1793"

    const-string v1, "\u17e1\u1790\u17d2\u1784\u17c3\u200b\u1798\u17bb\u1793"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u179f\u200b\u1794\u17d2\u178f\u17b6\u200b\u17a0\u17cd\u200b\u1798\u17bb\u1793"

    const-string v1, "\u17e1\u179f\u200b\u1794\u17d2\u178f\u17b6\u200b\u17a0\u17cd\u200b\u1798\u17bb\u1793"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u1781\u17c2\u1798\u17bb\u1793"

    const-string v1, "\u17e1\u1781\u17c2\u1798\u17bb\u1793"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u1786\u17d2\u1793\u17b6\u17c6\u200b\u1798\u17bb\u1793"

    const-string v1, "\u17e1\u1786\u17d2\u1793\u17b6\u17c6\u1798\u17bb\u1793"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/km;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/km;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/km;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/km;

    return-object v0
.end method
