.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final chromaFormatIdc:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final constraintBytes:[I

.field public final generalLevelIdc:I

.field public final generalProfileCompatibilityFlags:I

.field public final generalProfileIdc:I

.field public final generalProfileSpace:I

.field public final generalTierFlag:Z

.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IZIIIII[IIIIIFIII)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    .line 152
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    .line 153
    iput p3, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    .line 154
    iput p4, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    .line 155
    iput p5, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->chromaFormatIdc:I

    .line 156
    iput p6, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    .line 157
    iput p7, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    .line 158
    iput-object p8, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->constraintBytes:[I

    .line 159
    iput p9, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    .line 160
    iput p10, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->seqParameterSetId:I

    .line 161
    iput p11, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->width:I

    .line 162
    iput p12, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->height:I

    .line 163
    iput p13, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 164
    iput p14, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 165
    iput p15, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorRange:I

    move/from16 p1, p16

    .line 166
    iput p1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorTransfer:I

    return-void
.end method
