.class Lorg/schabi/newpipe/util/image/PicassoHelper$1;
.super Ljava/lang/Object;
.source "PicassoHelper.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/util/image/PicassoHelper;->loadScaledDownThumbnail(Landroid/content/Context;Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/schabi/newpipe/util/image/PicassoHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, "PICASSO_PLAYER_THUMBNAIL_TRANSFORMATION_KEY"

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 144
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lorg/schabi/newpipe/util/image/PicassoHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Thumbnail - transform() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/util/image/PicassoHelper$1;->val$context:Landroid/content/Context;

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035f

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v1, v0

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 153
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/core/graphics/BitmapCompat;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2

    :cond_2
    :goto_0
    sub-int/2addr v1, v4

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v0, v6

    div-float/2addr v5, v0

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 164
    invoke-static {p1, v1, v0, v3, v4}, Landroidx/core/graphics/BitmapCompat;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method
