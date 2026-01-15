.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ar;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "ar.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

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
    const-string v0, "\u062b\u0627\u0646\u064a\u062a\u064a\u0646"

    const-string v1, "\u062b\u0648\u0627\u0646\u064d"

    const-string v2, "\u062b\u0627\u0646\u064a\u0629"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u062f\u0642\u064a\u0642\u0629"

    const-string v1, "\u062f\u0642\u064a\u0642\u062a\u064a\u0646"

    const-string v2, "\u062f\u0642\u0627\u0626\u0642"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u0633\u0627\u0639\u0629"

    const-string v1, "\u0633\u0627\u0639\u062a\u064a\u0646"

    const-string v2, "\u0633\u0627\u0639\u0627\u062a"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u064a\u0648\u0645"

    const-string v1, "\u064a\u0648\u0645\u064a\u0646"

    const-string v2, "\u0623\u064a\u0627\u0645"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u0623\u0633\u0628\u0648\u0639"

    const-string v1, "\u0623\u0633\u0628\u0648\u0639\u064a\u0646"

    const-string v2, "\u0623\u0633\u0627\u0628\u064a\u0639"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u0634\u0647\u0631\u064a\u0646"

    const-string v1, "\u0634\u0647\u0631\u064b\u0627"

    const-string v2, "\u0623\u0634\u0647\u0631"

    const-string v3, "\u0634\u0647\u0631"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u0633\u0646\u062a\u064a\u0646"

    const-string v1, "\u0633\u0646\u0648\u0627\u062a"

    const-string v2, "\u0633\u0646\u0629"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ar;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    return-object v0
.end method
