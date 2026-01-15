.class public final enum Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
.super Ljava/lang/Enum;
.source "DeliveryType.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

.field public static final enum LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

.field public static final enum OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

.field public static final enum PROGRESSIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const-string v1, "PROGRESSIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->PROGRESSIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    .line 38
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const-string v3, "OTF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    .line 54
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const-string v5, "LIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const/4 v5, 0x3

    .line 10
    new-array v5, v5, [Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->$VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
    .locals 1

    .line 10
    const-class v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
    .locals 1

    .line 10
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->$VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    return-object v0
.end method
