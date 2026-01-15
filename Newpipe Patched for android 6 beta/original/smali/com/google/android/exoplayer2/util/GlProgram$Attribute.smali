.class final Lcom/google/android/exoplayer2/util/GlProgram$Attribute;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Attribute"
.end annotation


# instance fields
.field private buffer:Ljava/nio/Buffer;

.field private final index:I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->name:Ljava/lang/String;

    .line 284
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->index:I

    .line 285
    iput p3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->location:I

    return-void
.end method

.method public static create(II)Lcom/google/android/exoplayer2/util/GlProgram$Attribute;
    .locals 12

    const/4 v1, 0x1

    .line 250
    new-array v2, v1, [I

    const v3, 0x8b8a

    const/4 v11, 0x0

    .line 251
    invoke-static {p0, v3, v2, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 253
    aget v2, v2, v11

    new-array v9, v2, [B

    .line 255
    new-array v3, v1, [I

    new-array v5, v1, [I

    new-array v7, v1, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 267
    new-instance v1, Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/GlProgram;->access$000([B)I

    move-result v2

    invoke-direct {v1, v9, v11, v2}, Ljava/lang/String;-><init>([BII)V

    .line 268
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->access$100(ILjava/lang/String;)I

    move-result v0

    .line 270
    new-instance v2, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;

    invoke-direct {v2, v1, p1, v0}, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public bind()V
    .locals 7

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->buffer:Ljava/nio/Buffer;

    const-string v1, "call setBuffer before bind"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/nio/Buffer;

    const v0, 0x8892

    const/4 v1, 0x0

    .line 307
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 308
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->location:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->size:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x1406

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 310
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->index:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 311
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public setBuffer([FI)V
    .locals 0

    .line 296
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->buffer:Ljava/nio/Buffer;

    .line 297
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Attribute;->size:I

    return-void
.end method
