.class public abstract Lorg/schabi/newpipe/util/text/TimestampExtractor;
.super Ljava/lang/Object;
.source "TimestampExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;
    }
.end annotation


# static fields
.field public static final TIMESTAMPS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "(?:^|(?!:)\\W)(?:([0-5]?[0-9]):)?([0-5]?[0-9]):([0-5][0-9])(?=$|(?!:)\\W)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/text/TimestampExtractor;->TIMESTAMPS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static getTimestampFromMatcher(Ljava/util/regex/Matcher;Ljava/lang/String;)Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;
    .locals 6

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 35
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    :cond_0
    const/4 v2, 0x3

    .line 37
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result p0

    .line 39
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 40
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 43
    array-length v4, p1

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 44
    aget-object v2, p1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    aget-object v0, p1, v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v2, v0

    aget-object p1, p1, v3

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    add-int/2addr v2, p1

    goto :goto_1

    .line 47
    :cond_1
    array-length v2, p1

    if-ne v2, v3, :cond_2

    .line 48
    aget-object v2, p1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    aget-object p1, p1, v0

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 54
    :goto_1
    new-instance p1, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    invoke-direct {p1, v1, p0, v2}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;-><init>(III)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
