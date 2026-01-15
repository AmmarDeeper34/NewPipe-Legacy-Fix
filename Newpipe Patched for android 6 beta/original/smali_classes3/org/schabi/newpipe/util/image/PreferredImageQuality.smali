.class public final enum Lorg/schabi/newpipe/util/image/PreferredImageQuality;
.super Ljava/lang/Enum;
.source "PreferredImageQuality.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/util/image/PreferredImageQuality;

.field public static final enum HIGH:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

.field public static final enum LOW:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

.field public static final enum MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

.field public static final enum NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/util/image/PreferredImageQuality;
    .locals 3

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->LOW:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->HIGH:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/image/PreferredImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 10
    new-instance v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    const-string v1, "LOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/image/PreferredImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->LOW:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 11
    new-instance v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    const-string v1, "MEDIUM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/image/PreferredImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 12
    new-instance v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    const-string v1, "HIGH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/image/PreferredImageQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->HIGH:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 8
    invoke-static {}, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->$values()[Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->$VALUES:[Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromPreferenceKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/util/image/PreferredImageQuality;
    .locals 1

    const v0, 0x7f1201fc

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-object p0

    :cond_0
    const v0, 0x7f1201f8

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    sget-object p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->LOW:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-object p0

    :cond_1
    const v0, 0x7f1201f5

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 20
    sget-object p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->HIGH:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-object p0

    .line 22
    :cond_2
    sget-object p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/util/image/PreferredImageQuality;
    .locals 1

    .line 8
    const-class v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/util/image/PreferredImageQuality;
    .locals 1

    .line 8
    sget-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->$VALUES:[Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/util/image/PreferredImageQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    return-object v0
.end method


# virtual methods
.method public toResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 2

    .line 27
    sget-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality$1;->$SwitchMap$org$schabi$newpipe$util$image$PreferredImageQuality:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 36
    sget-object v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->HIGH:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object v0

    .line 31
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object v0

    .line 29
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object v0
.end method
