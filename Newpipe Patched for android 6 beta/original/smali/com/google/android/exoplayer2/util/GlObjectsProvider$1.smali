.class Lcom/google/android/exoplayer2/util/GlObjectsProvider$1;
.super Ljava/lang/Object;
.source "GlObjectsProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/GlObjectsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlObjectsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBuffersForTexture(III)Lcom/google/android/exoplayer2/util/GlTextureInfo;
    .locals 6

    .line 77
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/GlUtil;->createFboForTexture(I)I

    move-result v2

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/util/GlTextureInfo;

    const/4 v3, -0x1

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/GlTextureInfo;-><init>(IIIII)V

    return-object v0
.end method

.method public createEglContext(Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .locals 1

    .line 50
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/GlUtil;->createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    move-result-object p1

    return-object p1
.end method

.method public createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;
    .locals 0

    .line 62
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/util/GlUtil;->createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;

    move-result-object p1

    return-object p1
.end method

.method public createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;
    .locals 0

    .line 70
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/GlUtil;->createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    return-object p1
.end method
