.class abstract synthetic Lorg/schabi/newpipe/util/image/ImageStrategy$1;
.super Ljava/lang/Object;
.source "ImageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/image/ImageStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$schabi$newpipe$util$image$PreferredImageQuality:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 94
    invoke-static {}, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->values()[Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy$1;->$SwitchMap$org$schabi$newpipe$util$image$PreferredImageQuality:[I

    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy$1;->$SwitchMap$org$schabi$newpipe$util$image$PreferredImageQuality:[I

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->LOW:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy$1;->$SwitchMap$org$schabi$newpipe$util$image$PreferredImageQuality:[I

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy$1;->$SwitchMap$org$schabi$newpipe$util$image$PreferredImageQuality:[I

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->HIGH:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
