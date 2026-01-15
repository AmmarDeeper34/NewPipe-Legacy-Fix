.class public abstract Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHelper;
.super Ljava/lang/Object;
.source "SeekbarPreviewThumbnailHelper.java"


# direct methods
.method public static getSeekbarPreviewThumbnailType(Landroid/content/Context;)I
    .locals 3

    .line 56
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1203e1

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 56
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1203e3

    .line 58
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const v1, 0x7f1203e2

    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static tryResizeAndSetSeekbarPreviewThumbnail(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/util/function/IntSupplier;)V
    .locals 4

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 84
    :goto_0
    invoke-interface {p3}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p3

    int-to-float p3, p3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    const/16 v3, 0xa

    .line 86
    invoke-static {v3, p0}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(ILandroid/content/Context;)I

    move-result p0

    int-to-float v1, v1

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v3, v3, v1

    .line 88
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 82
    invoke-static {p3, p0, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    int-to-float p3, p0

    div-float/2addr p3, v1

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p3

    float-to-int p3, v1

    const/4 v1, 0x0

    .line 94
    invoke-static {p1, p0, p3, v1, v2}, Landroidx/core/graphics/BitmapCompat;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 93
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 96
    :goto_1
    :try_start_1
    const-string p3, "SeekbarPrevThumbHelper"

    const-string v1, "Failed to resize and set seekbar preview thumbnail"

    invoke-static {p3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    throw p0
.end method
