.class public final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;
.super Ljava/lang/Object;
.source "MediaBrowserImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final imageUriOrNullIfDisabled(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 414
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 29
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method
