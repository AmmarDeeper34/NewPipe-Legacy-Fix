.class public final Lcom/google/android/exoplayer2/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_COLOR_RANGE:Ljava/lang/String;

.field private static final FIELD_COLOR_SPACE:Ljava/lang/String;

.field private static final FIELD_COLOR_TRANSFER:Ljava/lang/String;

.field private static final FIELD_HDR_STATIC_INFO:Ljava/lang/String;

.field public static final SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public static final SRGB_BT709_FULL:Lcom/google/android/exoplayer2/video/ColorInfo;


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B


# direct methods
.method public static synthetic $r8$lambda$i3UxFzeQygsllLIxlpjjvKbToow(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .locals 5

    .line 392
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    const/4 v2, -0x1

    .line 393
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    .line 394
    invoke-virtual {p0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    .line 395
    invoke-virtual {p0, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v4, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    .line 396
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->SDR_BT709_LIMITED:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;-><init>()V

    .line 146
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorSpace(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorRange(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->setColorTransfer(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->build()Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->SRGB_BT709_FULL:Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v0, 0x0

    .line 375
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    .line 376
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    .line 377
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    .line 378
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    .line 390
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 242
    iput p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 243
    iput p3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 244
    iput-object p4, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    return-void
.end method

.method private static colorRangeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 356
    const-string p0, "Undefined color range"

    return-object p0

    .line 352
    :cond_0
    const-string p0, "Limited range"

    return-object p0

    .line 354
    :cond_1
    const-string p0, "Full range"

    return-object p0

    .line 350
    :cond_2
    const-string p0, "Unset color range"

    return-object p0
.end method

.method private static colorSpaceToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 320
    const-string p0, "Undefined color space"

    return-object p0

    .line 314
    :cond_0
    const-string p0, "BT601"

    return-object p0

    .line 316
    :cond_1
    const-string p0, "BT709"

    return-object p0

    .line 318
    :cond_2
    const-string p0, "BT2020"

    return-object p0

    .line 312
    :cond_3
    const-string p0, "Unset color space"

    return-object p0
.end method

.method private static colorTransferToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 342
    const-string p0, "Undefined color transfer"

    return-object p0

    .line 340
    :cond_0
    const-string p0, "HLG"

    return-object p0

    .line 338
    :cond_1
    const-string p0, "ST2084 PQ"

    return-object p0

    .line 332
    :cond_2
    const-string p0, "SDR SMPTE 170M"

    return-object p0

    .line 334
    :cond_3
    const-string p0, "sRGB"

    return-object p0

    .line 330
    :cond_4
    const-string p0, "Linear"

    return-object p0

    .line 336
    :cond_5
    const-string p0, "Gamma 2.2"

    return-object p0

    .line 328
    :cond_6
    const-string p0, "Unset color transfer"

    return-object p0
.end method

.method public static isTransferHdr(Lcom/google/android/exoplayer2/video/ColorInfo;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 206
    iget p0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isoColorPrimariesToColorSpace(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static isoTransferCharacteristicsToColorTransfer(I)I
    .locals 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_4

    if-eq p0, v2, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .locals 2

    .line 249
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;-><init>(Lcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/video/ColorInfo$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 285
    const-class v2, Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 289
    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 292
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 362
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 364
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 365
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 366
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 367
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    .line 370
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 258
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 382
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 384
    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 385
    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 386
    sget-object v1, Lcom/google/android/exoplayer2/video/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public toLogString()Ljava/lang/String;
    .locals 5

    .line 269
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/ColorInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const-string v0, "NA"

    return-object v0

    .line 273
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 275
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpaceToString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 276
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRangeToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 277
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 273
    const-string v0, "%s/%s/%s"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 298
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpaceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 300
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRangeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 302
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
