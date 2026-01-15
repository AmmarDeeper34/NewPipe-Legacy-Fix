.class public final Lcom/google/android/exoplayer2/util/GlTextureInfo;
.super Ljava/lang/Object;
.source "GlTextureInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/util/GlTextureInfo;


# instance fields
.field private final fboId:I

.field private final height:I

.field private isReleased:Z

.field private final rboId:I

.field private final texId:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/util/GlTextureInfo;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/GlTextureInfo;-><init>(IIIII)V

    sput-object v0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->UNSET:Lcom/google/android/exoplayer2/util/GlTextureInfo;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->texId:I

    .line 62
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->fboId:I

    .line 63
    iput p3, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->rboId:I

    .line 64
    iput p4, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->width:I

    .line 65
    iput p5, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->height:I

    return-void
.end method


# virtual methods
.method public getFboId()I
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->fboId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 101
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->height:I

    return v0
.end method

.method public getRboId()I
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->rboId:I

    return v0
.end method

.method public getTexId()I
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 71
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->texId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 95
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->texId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 107
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteTexture(I)V

    .line 109
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->fboId:I

    if-eq v0, v1, :cond_1

    .line 110
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteFbo(I)V

    .line 112
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->rboId:I

    if-eq v0, v1, :cond_2

    .line 113
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteRbo(I)V

    :cond_2
    return-void
.end method
