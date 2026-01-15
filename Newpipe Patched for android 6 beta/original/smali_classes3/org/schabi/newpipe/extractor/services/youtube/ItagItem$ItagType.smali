.class public final enum Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
.super Ljava/lang/Enum;
.source "ItagItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItagType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 144
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 145
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 146
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const-string v5, "VIDEO_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v5, 0x3

    .line 143
    new-array v5, v5, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->$VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    .locals 1

    .line 143
    const-class v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    .locals 1

    .line 143
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->$VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    return-object v0
.end method
