.class public final enum Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
.super Ljava/lang/Enum;
.source "StreamExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Privacy"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum INTERNAL:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum OTHER:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum PRIVATE:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 597
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 598
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v3, "UNLISTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 599
    new-instance v3, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v5, "PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PRIVATE:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 600
    new-instance v5, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v7, "INTERNAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->INTERNAL:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 601
    new-instance v7, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v9, "OTHER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->OTHER:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const/4 v9, 0x5

    .line 596
    new-array v9, v9, [Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 596
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    .line 596
    const-class v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    .line 596
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method
