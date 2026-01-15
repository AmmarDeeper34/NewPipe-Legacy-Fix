.class public abstract Lorg/schabi/newpipe/player/ui/VideoPlayerUi;
.super Lorg/schabi/newpipe/player/ui/PlayerUi;
.source "VideoPlayerUi.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroidx/appcompat/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;
    }
.end annotation


# static fields
.field private static final PLAYBACK_SPEEDS:[F

.field private static final TAG:Ljava/lang/String; = "VideoPlayerUi"


# instance fields
.field private audioTrackPopupMenu:Landroidx/appcompat/widget/PopupMenu;

.field protected binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

.field private captionPopupMenu:Landroidx/appcompat/widget/PopupMenu;

.field private final controlsVisibilityHandler:Landroid/os/Handler;

.field private gestureDetector:Landroid/view/GestureDetector;

.field protected isSomePopupMenuVisible:Z

.field private onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected playbackSpeedPopupMenu:Landroidx/appcompat/widget/PopupMenu;

.field private playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

.field private qualityPopupMenu:Landroidx/appcompat/widget/PopupMenu;

.field private final seekbarPreviewThumbnailHolder:Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;

.field private surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

.field surfaceIsSetup:Z


# direct methods
.method public static synthetic $r8$lambda$-JE-nuq37cVzlfW8i-xQMF2uJC8(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$onMoreOptionsClicked$28(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$0U94CcuJ-LbRE8qlJu1zeyxJQko(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$hideControls$10(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$4yqh7ZSc7aE4cFUXL5Ge0nX5-Rg(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onPlayWithKodiClicked()V

    return-void
.end method

.method public static synthetic $r8$lambda$9p0UrZRfhINmOzPwj43QgX8CQdE(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onOpenInBrowserClicked()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bde3Si9cLQdPdYXRfVXzmXRvGKM(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$onPlaying$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$DO1g3HBYv1lGyEM1GMkL2bbu6F8(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$initListeners$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$GED7krN-07_EwbR9LtFA8a2UAH4(Lcom/google/android/exoplayer2/Tracks$Group;)Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1389
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jbwsoc-7F-zR7Q1n07hIzzGN_1s(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 251
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 252
    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method public static synthetic $r8$lambda$KAI2PBHpNyaDUPO0YhXRPgLS274(Lcom/google/android/exoplayer2/source/TrackGroup;)Z
    .locals 0

    .line 1381
    iget p0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$KXowSePGJJS7bIvlhbnxF_l79mk(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onCaptionClicked()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nx1tluk3i62WwvdLAi3mrPFdS9Q(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$initListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O47RwFI6WlcqlWmNRBTTsllsWmg(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$initListeners$3(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$O_QWfMDPu1tpNSYwpH_zEIRchSo(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$showControlsThenHide$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$RIzgQUbT3AHKcpgphq0lT_qiV1A(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$makeOnClickListener$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sxpq5krtma60kkwvqMZSq5fEhX8(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onMoreOptionsClicked()V

    return-void
.end method

.method public static synthetic $r8$lambda$TEXzlPLO1k6TcHQMtifx-VqTsHs(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$setupPlayerSeekOverlay$8()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VJhUfV9S0wdP6cM9rXE2oDnquiI(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$onCompleted$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$WSvPuc1KrK6PtwKaFXzvw7s0jjA(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$onOpenInBrowserClicked$29(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUrjlTxg1oSvg5zUl4R_7RF2C-M(Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/lang/String;
    .locals 2

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormatId()I

    move-result v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getNameById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZWSHJf7agTq9-tiSiJlUd7ptu90(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Ljava/lang/String;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$buildCaptionMenu$18(Ljava/lang/String;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aZ6BumUZKX9CyaJYpycwAFo96tc(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$buildCaptionMenu$17(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b9doSgaZxY-SMhuuOqNqL7h4jYs(Lcom/google/android/exoplayer2/Tracks$Group;)Z
    .locals 1

    const/4 v0, 0x3

    .line 1377
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Tracks$Group;->getType()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$eXj8dxJB8UXQ9jTgUOcFZ2tA18Q(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onAudioTracksClicked()V

    return-void
.end method

.method public static synthetic $r8$lambda$fsZyx_tS2ObZoimmoxtHxl1c4IA(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$updateStreamRelatedViews$14(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jDsrxj7m4WjDS9OUBUgvWtYfETU(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$initListeners$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$k7BQ8XtGE6rezQqW9eZZSh0MmYY(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$initListeners$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kcnSStn2EfCM0DBIBbye_1JRvnU(Lcom/google/android/exoplayer2/source/TrackGroup;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1382
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$kmQ-gHSpRlP8IHhy0K6BjAzObEA(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onQualityClicked()V

    return-void
.end method

.method public static synthetic $r8$lambda$lk4wQsFAW_DeVe-Fe-SA2u4svKM(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$initListeners$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$nG50A8tsqnEJmng1F6L0AAzPFaw(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$initListeners$7(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$pORZ1tHSElP7KRsl8lXiTBpPMYU(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Lorg/schabi/newpipe/extractor/stream/VideoStream;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$onDismiss$20(Lorg/schabi/newpipe/extractor/stream/VideoStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sLz84DjfIdKegRqDuEqocysGYyg(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$makeOnClickListener$27(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$swVcRL0AwaI0CBuzpRkmJYa5s5k(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$onPaused$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$tzPv827TlF6Ozr0ssH0XGzpK9U0(Lcom/google/android/exoplayer2/Tracks$Group;)Z
    .locals 1

    .line 1388
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ueQlNaosXVclUcZTa8-YkX58SzM(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Lorg/schabi/newpipe/extractor/stream/AudioStream;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$buildAudioTrackMenu$16(Lorg/schabi/newpipe/extractor/stream/AudioStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wpPnDtle-WQoFwr0U1buQf4j_1o(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Lorg/schabi/newpipe/extractor/stream/VideoStream;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->lambda$buildQualityMenu$15(Lorg/schabi/newpipe/extractor/stream/VideoStream;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetplayerGestureListener(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 105
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->PLAYBACK_SPEEDS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x3fe00000    # 1.75f
        0x40000000    # 2.0f
    .end array-data
.end method

.method protected constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V
    .locals 1

    .line 159
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 116
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceIsSetup:Z

    .line 131
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 147
    new-instance p1, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;

    invoke-direct {p1}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->seekbarPreviewThumbnailHolder:Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;

    .line 160
    iput-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 161
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupFromView()V

    return-void
.end method

.method private adjustSeekbarPreviewContainer()V
    .locals 4

    .line 597
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomSeekbarPreviewLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 601
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 602
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 603
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 604
    invoke-virtual {v2}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    .line 607
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    .line 608
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 611
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackWindowRoot:Landroid/widget/RelativeLayout;

    .line 612
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    .line 613
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 611
    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    .line 616
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    .line 618
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 620
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 622
    sget-object v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    const-string v2, "Failed to adjust seekbarPreviewContainer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomSeekbarPreviewLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private animatePlayButtons(ZJ)V
    .locals 3

    .line 906
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    sget-object v1, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {v0, p1, p2, p3, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    .line 908
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 913
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v2

    if-lez v2, :cond_2

    .line 914
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-static {v2, p1, p2, p3, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 920
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 921
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-static {v0, p1, p2, p3, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    return-void
.end method

.method private buildAudioTrackMenu()V
    .locals 7

    .line 1115
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1118
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 1120
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 1121
    invoke-virtual {v0, v2}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda2;-><init>()V

    .line 1122
    invoke-virtual {v0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    .line 1123
    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1128
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1129
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 1130
    iget-object v5, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v5}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    iget-object v6, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 1131
    invoke-static {v6, v4}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object v4

    .line 1130
    invoke-interface {v5, v1, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1134
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getSelectedAudioStream()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda46;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 1135
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1137
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1139
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private buildCaptionMenu(Ljava/util/List;)V
    .locals 6

    .line 1158
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1161
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x59

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 1163
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    .line 1166
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f120073

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1168
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda41;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x0

    .line 1180
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1182
    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v4}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v4, v1, v0, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 1184
    new-instance v5, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    invoke-direct {v5, p0, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1207
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    .line 1210
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCaptionRendererIndex()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1218
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 1219
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v2, 0x7f120077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1221
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1222
    invoke-virtual {v1, p1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    .line 1221
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    return-void

    .line 1228
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 1229
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 1230
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1231
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    .line 1233
    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->captionLanguageStemOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1232
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    const/16 v2, 0x40

    .line 1234
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 1235
    invoke-virtual {v0, p1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    .line 1231
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private buildPlaybackSpeedMenu()V
    .locals 7

    .line 1143
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-nez v0, :cond_0

    return-void

    .line 1146
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeGroup(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1148
    :goto_0
    sget-object v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->PLAYBACK_SPEEDS:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 1149
    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v4}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    aget v3, v3, v2

    float-to-double v5, v3

    .line 1150
    invoke-static {v5, v6}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    move-result-object v3

    .line 1149
    invoke-interface {v4, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1152
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getPlaybackSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1154
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    return-void
.end method

.method private buildQualityMenu()V
    .locals 8

    .line 1089
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1092
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 1094
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda47;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda47;-><init>()V

    .line 1095
    invoke-virtual {v0, v2}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda47;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda47;-><init>()V

    .line 1096
    invoke-virtual {v0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    .line 1097
    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1102
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1103
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 1104
    iget-object v5, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v5}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormatId()I

    move-result v7

    invoke-static {v7}, Lorg/schabi/newpipe/extractor/MediaFormat;->getNameById(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1104
    invoke-interface {v5, v1, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1107
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1108
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    .line 1110
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getSelectedVideoStream()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda48;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 1111
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private clearVideoSurface()V
    .locals 2

    .line 1607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1610
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->release()V

    const/4 v0, 0x0

    .line 1611
    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 1613
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 1614
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceIsSetup:Z

    return-void
.end method

.method private initViews()V
    .locals 5

    .line 171
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupSubtitleView()V

    .line 173
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 174
    invoke-virtual {v0}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->getResizeMode()I

    move-result v0

    invoke-static {v2, v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->resizeTypeOf(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/high16 v3, -0x10000

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 181
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v3, 0x7f130147

    invoke-direct {v0, v1, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 184
    new-instance v1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 185
    new-instance v1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 186
    new-instance v1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v4, v4, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-direct {v1, v3, v4}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 187
    new-instance v1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v3, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->progressBarLoadingPanel:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 192
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->titleTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 193
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->channelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 196
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$buildAudioTrackMenu$16(Lorg/schabi/newpipe/extractor/stream/AudioStream;)V
    .locals 2

    .line 1135
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    .line 1136
    invoke-static {v1, p1}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object p1

    .line 1135
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$buildCaptionMenu$17(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1169
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCaptionRendererIndex()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 1171
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v2

    .line 1172
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    .line 1171
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 1174
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v2, 0x7f120077

    .line 1175
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1
.end method

.method private synthetic lambda$buildCaptionMenu$18(Ljava/lang/String;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1185
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getCaptionRendererIndex()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1195
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v1

    .line 1196
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    .line 1198
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->captionLanguageStemOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1197
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    const/16 v2, 0x40

    .line 1199
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1200
    invoke-virtual {v1, p2, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p2

    .line 1195
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 1201
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v1, 0x7f120077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1202
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$buildQualityMenu$15(Lorg/schabi/newpipe/extractor/stream/VideoStream;)V
    .locals 1

    .line 1111
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$hideControls$10(J)V
    .locals 9

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, v0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showHideShadow(ZJ)V

    .line 719
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v8, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda39;

    invoke-direct {v8, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda39;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-wide v3, p1

    invoke-static/range {v1 .. v8}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initListeners$0(Landroid/view/View;)V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onRepeatClicked()V

    return-void
.end method

.method private synthetic lambda$initListeners$1(Landroid/view/View;)V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onShuffleClicked()V

    return-void
.end method

.method private synthetic lambda$initListeners$2()V
    .locals 4

    .line 226
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 229
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/Player;->getVideoUrlAtCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-static {v1, v2, v3, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initListeners$3(Landroid/view/View;)Z
    .locals 1

    .line 233
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getVideoUrlAtCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$initListeners$4()V
    .locals 3

    .line 237
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 238
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 239
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 238
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnMainPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method private synthetic lambda$initListeners$5()V
    .locals 3

    .line 245
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.schabi.newpipe"

    .line 246
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$initListeners$7(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 262
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerOverlays:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p6

    .line 262
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/view/View;->setPadding(IIII)V

    .line 269
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    neg-int p3, p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    neg-int p3, p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    neg-int p3, p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    neg-int p1, p1

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method private synthetic lambda$makeOnClickListener$26(Landroid/view/View;)V
    .locals 4

    .line 1452
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    if-nez v0, :cond_2

    .line 1453
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eq p1, v1, :cond_1

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-ne p1, v0, :cond_0

    .line 1455
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isFullscreen()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    const-wide/16 v2, 0x7d0

    .line 1458
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    return-void

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 1456
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$makeOnClickListener$27(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 8

    .line 1438
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1439
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() called with: v = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1445
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p1

    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    return-void

    .line 1448
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 p1, 0x1

    const-wide/16 v0, 0x12c

    .line 1449
    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showHideShadow(ZJ)V

    .line 1450
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda49;

    invoke-direct {v7, p0, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda49;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Landroid/view/View;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v7}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCompleted$13()V
    .locals 3

    .line 890
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->REPLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayPauseButton(Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    .line 891
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(ZJ)V

    return-void
.end method

.method private synthetic lambda$onDismiss$20(Lorg/schabi/newpipe/extractor/stream/VideoStream;)V
    .locals 1

    .line 1334
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onMoreOptionsClicked$28(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1520
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onOpenInBrowserClicked$29(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 1535
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPaused$12()V
    .locals 3

    .line 866
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->PLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayPauseButton(Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    .line 867
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(ZJ)V

    .line 868
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isAnyListViewOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPlaying$11()V
    .locals 3

    .line 836
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->PAUSE:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayPauseButton(Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    .line 837
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(ZJ)V

    .line 838
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isAnyListViewOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupPlayerSeekOverlay$8()Ljava/lang/Integer;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showControlsThenHide$9(J)V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 694
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    return-void
.end method

.method private synthetic lambda$updateStreamRelatedViews$14(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 1028
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$2;->$SwitchMap$org$schabi$newpipe$extractor$stream$StreamType:[I

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1057
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 1058
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v0

    invoke-interface {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeQuality()Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1059
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1064
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->buildQualityMenu()V

    .line 1065
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->buildAudioTrackMenu()V

    .line 1067
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1072
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1050
    :pswitch_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1052
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1044
    :pswitch_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1046
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1038
    :pswitch_3
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1040
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->buildPlaybackSpeedMenu()V

    .line 1077
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAudioTrackItemClick(Landroid/view/MenuItem;)V
    .locals 3

    .line 1304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1305
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1306
    invoke-interface {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeAudioTrack()Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1311
    :cond_0
    invoke-interface {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeAudioTrack()Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 1312
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->getAudioStreams()Ljava/util/List;

    move-result-object v2

    .line 1313
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->getSelectedAudioStreamIndex()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1314
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    goto :goto_0

    .line 1318
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v0

    .line 1319
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/Player;->setAudioTrack(Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onAudioTracksClicked()V
    .locals 1

    .line 1251
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    const/4 v0, 0x1

    .line 1252
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    return-void
.end method

.method private onCaptionClicked()V
    .locals 2

    .line 1343
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1344
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "onCaptionClicked() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    const/4 v0, 0x1

    .line 1347
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    return-void
.end method

.method private onMoreOptionsClicked()V
    .locals 13

    .line 1505
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1506
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "onMoreOptionsClicked() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    .line 1510
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1512
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0xb4

    :goto_1
    const-wide/16 v3, 0x12c

    invoke-static {v2, v3, v4, v1}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateRotation(Landroid/view/View;JI)V

    .line 1514
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    xor-int/lit8 v6, v0, 0x1

    sget-object v9, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v12, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda44;

    invoke-direct {v12, p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda44;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Z)V

    const-wide/16 v7, 0x12c

    const-wide/16 v10, 0x0

    invoke-static/range {v5 .. v12}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 1523
    invoke-virtual {p0, v3, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    return-void
.end method

.method private onOpenInBrowserClicked()V
    .locals 2

    .line 1534
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda45;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onPlayWithKodiClicked()V
    .locals 2

    .line 1527
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->pause()V

    .line 1529
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/external_communication/KoreUtils;->playWithKore(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private onQualityClicked()V
    .locals 3

    .line 1242
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    const/4 v0, 0x1

    .line 1243
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 1245
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getSelectedVideoStream()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda37;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda37;-><init>()V

    .line 1246
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 1247
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda38;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda38;-><init>(Lorg/schabi/newpipe/views/NewPipeTextView;)V

    invoke-virtual {v0, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onQualityItemClick(Landroid/view/MenuItem;)V
    .locals 3

    .line 1284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1285
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1286
    invoke-interface {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeQuality()Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    invoke-interface {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeQuality()Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 1291
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->getSortedVideoStreams()Ljava/util/List;

    move-result-object v2

    .line 1292
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->getSelectedVideoStreamIndex()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1293
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    goto :goto_0

    .line 1297
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v0

    .line 1298
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/Player;->setPlaybackQuality(Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setMuteButton(Z)V
    .locals 2

    .line 979
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p1, 0x7f080163

    goto :goto_0

    :cond_0
    const p1, 0x7f080164

    :goto_0
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setShuffleButton(Z)V
    .locals 1

    .line 984
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p1, 0x4d

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method private setVideoDurationToControls(I)V
    .locals 2

    .line 558
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 563
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 564
    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    move-result v0

    .line 563
    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    return-void
.end method

.method private setupPlayerSeekOverlay()V
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 320
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier(Lkotlin/jvm/functions/Function0;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 321
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener(Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 373
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls(Lorg/schabi/newpipe/player/gesture/DoubleTapListener;)Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    return-void
.end method

.method private setupSubtitleView()V
    .locals 3

    .line 1411
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getCaptionScale(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupSubtitleView(F)V

    .line 1412
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getCaptionStyle(Landroid/content/Context;)Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    move-result-object v0

    .line 1413
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    sget-object v2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    .line 1414
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    return-void
.end method

.method private updateEndScreenThumbnail(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 483
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->calculateMaxEndScreenThumbnailHeight(Landroid/graphics/Bitmap;)F

    move-result v1

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    float-to-int v3, v1

    const/4 v4, 0x1

    .line 488
    invoke-static {p1, v2, v3, v0, v4}, Landroidx/core/graphics/BitmapCompat;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 495
    sget-boolean v2, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 496
    sget-object v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thumbnail - onThumbnailLoaded() called with: currentThumbnail = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", scaled end screen height = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", scaled end screen width = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 496
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updatePlayBackElementsCurrentDuration(I)V
    .locals 2

    .line 546
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    .line 547
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackCurrentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePlayPauseButton(Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;)V
    .locals 2

    .line 769
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 770
    sget-object v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$2;->$SwitchMap$org$schabi$newpipe$player$ui$VideoPlayerUi$PlayButtonAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    .line 780
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v1, 0x7f1203b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p1, 0x7f080147

    .line 781
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    return-void

    .line 776
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v1, 0x7f120346

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p1, 0x7f080132

    .line 777
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    return-void

    .line 772
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    const v1, 0x7f12035c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p1, 0x7f08013b

    .line 773
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    return-void
.end method

.method private updateStreamRelatedViews()V
    .locals 2

    .line 1027
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda40;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method abstract buildGestureListener()Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
.end method

.method protected abstract calculateMaxEndScreenThumbnailHeight(Landroid/graphics/Bitmap;)F
.end method

.method protected deinitListeners()V
    .locals 2

    .line 280
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 284
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 290
    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->gestureDetector:Landroid/view/GestureDetector;

    .line 292
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 301
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 303
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 312
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public deinitPlayerSeekOverlay()V
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    const/4 v1, 0x0

    .line 378
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier(Lkotlin/jvm/functions/Function0;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener(Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 415
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroy()V

    .line 416
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->deinitPlayerSeekOverlay()V

    .line 418
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->deinitListeners()V

    return-void
.end method

.method public destroyPlayer()V
    .locals 0

    .line 409
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroyPlayer()V

    .line 410
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->clearVideoSurface()V

    return-void
.end method

.method public getBinding()Lorg/schabi/newpipe/databinding/PlayerBinding;
    .locals 1

    .line 1625
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    return-object v0
.end method

.method public getGestureDetector()Landroid/view/GestureDetector;
    .locals 1

    .line 1629
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public hideControls(JJ)V
    .locals 3

    .line 709
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 710
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideControls() called with: duration = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], delay = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showOrHideButtons()V

    .line 716
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 717
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;J)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected hideSystemUIIfNeeded()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initListeners()V
    .locals 3

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 204
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda23;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 208
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda24;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda25;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda26;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda26;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->buildGestureListener()Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 213
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->gestureDetector:Landroid/view/GestureDetector;

    .line 214
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda27;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda28;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda29;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda29;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda30;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda30;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 224
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 236
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda17;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda18;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/player/Player;)V

    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 260
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 276
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public initPlayback()V
    .locals 1

    .line 399
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->initPlayback()V

    .line 402
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setShuffleButton(Z)V

    return-void
.end method

.method public initPlayer()V
    .locals 0

    .line 393
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->initPlayer()V

    .line 394
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupVideoSurfaceIfNeeded()V

    return-void
.end method

.method protected isAnyListViewOpen()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isControlsVisible()Z
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isSomePopupMenuVisible()Z
    .locals 1

    .line 1351
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    return v0
.end method

.method protected makeOnClickListener(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1437
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda43;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public onBlocked()V
    .locals 7

    .line 802
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBlocked()V

    const-wide/16 v0, 0x12c

    const-wide/16 v2, 0x0

    .line 805
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 807
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 808
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x10000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 809
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 811
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 812
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 813
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceForeground:Landroid/view/View;

    const-wide/16 v2, 0x64

    invoke-static {v0, v4, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    .line 815
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;->PLAY:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayPauseButton(Lorg/schabi/newpipe/player/ui/VideoPlayerUi$PlayButtonAction;)V

    .line 816
    invoke-direct {p0, v1, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(ZJ)V

    .line 817
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 1

    .line 450
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 451
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updateEndScreenThumbnail(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onBuffering()V
    .locals 2

    .line 848
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBuffering()V

    .line 849
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 850
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onCompleted()V
    .locals 9

    .line 886
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onCompleted()V

    .line 888
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v8, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    invoke-direct {v8, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 894
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 897
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayBackElementsCurrentDuration(I)V

    const-wide/16 v2, 0x1f4

    .line 899
    invoke-virtual {p0, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    .line 900
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3, v5}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    .line 901
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceForeground:Landroid/view/View;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1

    .line 1406
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onCues(Ljava/util/List;)V

    .line 1407
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public onDismiss(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 4

    .line 1329
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1330
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss() called with: menu = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 1332
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 1333
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getSelectedVideoStream()Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda33;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 1334
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1336
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x12c

    const-wide/16 v2, 0x0

    .line 1337
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 1338
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideSystemUIIfNeeded()V

    :cond_1
    return-void
.end method

.method public onKeyDown(I)Z
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1478
    :pswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isAnyListViewOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1484
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p1

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_2

    return v1

    .line 1488
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x12c

    const-wide/16 v2, 0x1b58

    .line 1489
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    goto :goto_0

    .line 1491
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1492
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControlsThenHide()V

    .line 1493
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showSystemUIPartially()V

    return v1

    .line 1468
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 v2, 0x0

    .line 1469
    invoke-virtual {p0, v2, v3, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    return v1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1260
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1261
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick() called with: menuItem = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], menuItem.getItemId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/16 v1, 0x45

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1267
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onQualityItemClick(Landroid/view/MenuItem;)V

    return v2

    .line 1269
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_2

    .line 1270
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onAudioTrackItemClick(Landroid/view/MenuItem;)V

    return v2

    .line 1272
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_3

    .line 1273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 1274
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->PLAYBACK_SPEEDS:[F

    aget p1, v0, p1

    .line 1276
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/Player;->setPlaybackSpeed(F)V

    .line 1277
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    float-to-double v1, p1

    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 1016
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 1018
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updateStreamRelatedViews()V

    .line 1020
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->titleTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->channelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->seekbarPreviewThumbnailHolder:Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getPreviewFrames()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->resetFrom(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public onMuteUnmuteChanged(Z)V
    .locals 0

    .line 974
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onMuteUnmuteChanged(Z)V

    .line 975
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setMuteButton(Z)V

    return-void
.end method

.method public onPaused()V
    .locals 9

    .line 856
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPaused()V

    .line 860
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x190

    .line 861
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    .line 862
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v8, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda36;

    invoke-direct {v8, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda36;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x50

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 874
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onPausedSeek()V
    .locals 3

    .line 879
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPausedSeek()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    .line 880
    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(ZJ)V

    .line 881
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 3

    .line 996
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 997
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract onPlaybackSpeedClicked()V
.end method

.method public onPlaying()V
    .locals 10

    .line 822
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlaying()V

    .line 824
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updateStreamRelatedViews()V

    .line 826
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 827
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x10000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 828
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 830
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    sget-object v6, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    invoke-static {v0, v2, v3, v4, v6}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    .line 834
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v9, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda35;

    invoke-direct {v9, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda35;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x50

    const-wide/16 v7, 0x0

    invoke-static/range {v2 .. v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 843
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onPrepared()V
    .locals 3

    .line 795
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPrepared()V

    .line 796
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setVideoDurationToControls(I)V

    .line 797
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getPlaybackSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 574
    :cond_0
    sget-boolean p3, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz p3, :cond_1

    .line 575
    sget-object p3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged() called with: seekBar = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], progress = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 584
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->seekbarPreviewThumbnailHolder:Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;

    .line 585
    invoke-virtual {p3, p2}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->getBitmapAt(I)Lj$/util/Optional;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, p3, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentSeekbarPreviewThumbnail:Landroid/widget/ImageView;

    iget-object p3, p3, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 587
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda31;

    invoke-direct {v1, p3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda31;-><init>(Lcom/google/android/exoplayer2/ui/SubtitleView;)V

    .line 583
    invoke-static {p1, p2, v0, v1}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHelper;->tryResizeAndSetSeekbarPreviewThumbnail(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/util/function/IntSupplier;)V

    .line 589
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->adjustSeekbarPreviewContainer()V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 4

    .line 1002
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onRenderedFirstFrame()V

    .line 1004
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceForeground:Landroid/view/View;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method

.method public onRepeatClicked()V
    .locals 2

    .line 937
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 938
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "onRepeatClicked() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->cycleNextRepeatMode()V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    .line 952
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onRepeatModeChanged(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 955
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const v0, 0x7f080093

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 958
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const v0, 0x7f080095

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    return-void

    .line 961
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const v0, 0x7f080094

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    return-void
.end method

.method onResizeClicked()V
    .locals 2

    .line 1551
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {v1}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->getResizeMode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->nextResizeModeAndSaveToPrefs(Lorg/schabi/newpipe/player/Player;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setResizeMode(I)V

    return-void
.end method

.method public onShuffleClicked()V
    .locals 2

    .line 944
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 945
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "onShuffleClicked() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->toggleShuffleModeEnabled()V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 968
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onShuffleModeEnabledChanged(Z)V

    .line 969
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setShuffleButton(Z)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 630
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch() called with: seekBar = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p1

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_1

    .line 634
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    :cond_1
    const-wide/16 v0, 0x0

    .line 637
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    .line 638
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    sget-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-static {p1, v1, v2, v3, v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    .line 640
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentSeekbarPreviewThumbnail:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2, v3, v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 646
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch() called with: seekBar = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 651
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 652
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->play()V

    .line 655
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackCurrentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    sget-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {p1, v1, v2, v3, v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    .line 657
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentSeekbarPreviewThumbnail:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2, v3, v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    .line 659
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_2

    .line 660
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 662
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 663
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->startProgressLoop()V

    .line 666
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControlsThenHide()V

    return-void
.end method

.method public onTextTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 5

    .line 1363
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onTextTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V

    const/4 v0, 0x3

    .line 1365
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Tracks;->containsType(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1366
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Tracks;->isTypeSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1367
    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->getPlayer()Lorg/schabi/newpipe/player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/16 v3, 0x8

    if-eqz v1, :cond_6

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 1375
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 1376
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda1;-><init>()V

    .line 1377
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 1378
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1379
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda2;-><init>()V

    .line 1380
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda3;-><init>()V

    .line 1381
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda4;-><init>()V

    .line 1382
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 1383
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1386
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda5;-><init>()V

    .line 1387
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda6;-><init>()V

    .line 1388
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda7;-><init>()V

    .line 1389
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 1390
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    .line 1393
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->buildCaptionMenu(Ljava/util/List;)V

    .line 1394
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 1395
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/Player;->getCaptionRendererIndex()I

    move-result v4

    .line 1394
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1395
    invoke-virtual {p1}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 1398
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1396
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const v1, 0x7f120073

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1400
    :goto_3
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 1401
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v2, 0x8

    .line 1400
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1369
    :cond_6
    :goto_4
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 476
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 477
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updateEndScreenThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onUpdateProgress(III)V
    .locals 4

    .line 520
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 521
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setVideoDurationToControls(I)V

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_1

    .line 524
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayBackElementsCurrentDuration(I)V

    .line 526
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x5a

    if-le p3, v0, :cond_3

    .line 527
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 528
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 527
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 530
    :cond_3
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_4

    rem-int/lit8 v0, p3, 0x14

    if-nez v0, :cond_4

    .line 531
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProgressUpdateToListeners() called with: isVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", currentProgress = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], duration = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], bufferPercent = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 531
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/Player;->isLiveEdge()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 2

    .line 1556
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 1559
    iget v0, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 1562
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setAspectRatio(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract removeViewFromParent()V
.end method

.method protected setResizeMode(I)V
    .locals 2

    .line 1546
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setResizeMode(I)V

    .line 1547
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->resizeTypeOf(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupAfterIntent()V
    .locals 2

    .line 384
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->setupAfterIntent()V

    .line 385
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupElementsVisibility()V

    .line 386
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupElementsSize(Landroid/content/res/Resources;)V

    .line 387
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected setupElementsSize(IIII)V
    .locals 2

    .line 432
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, p3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 433
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomControls:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3, v1, p3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 434
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 435
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 436
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 437
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 438
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected abstract setupElementsSize(Landroid/content/res/Resources;)V
.end method

.method protected setupElementsVisibility()V
    .locals 4

    .line 422
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setMuteButton(Z)V

    .line 423
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateRotation(Landroid/view/View;JI)V

    return-void
.end method

.method public setupFromView()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->initViews()V

    .line 166
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->initListeners()V

    .line 167
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupPlayerSeekOverlay()V

    return-void
.end method

.method protected abstract setupSubtitleView(F)V
.end method

.method public setupVideoSurfaceIfNeeded()V
    .locals 3

    .line 1582
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceIsSetup:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 1583
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1585
    invoke-direct {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->clearVideoSurface()V

    .line 1587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1588
    new-instance v0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/Player;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 1589
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1593
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1599
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1602
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceIsSetup:Z

    :cond_2
    return-void
.end method

.method public showControls(J)V
    .locals 2

    .line 698
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "showControls() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showOrHideButtons()V

    .line 702
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showSystemUIPartially()V

    .line 703
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 704
    invoke-virtual {p0, v0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showHideShadow(ZJ)V

    .line 705
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0, p1, p2}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJ)V

    return-void
.end method

.method public showControlsThenHide()V
    .locals 11

    .line 681
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->TAG:Ljava/lang/String;

    const-string v1, "showControlsThenHide() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showOrHideButtons()V

    .line 686
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showSystemUIPartially()V

    .line 688
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1b58

    :goto_0
    const/4 v2, 0x1

    const-wide/16 v3, 0x12c

    .line 692
    invoke-virtual {p0, v2, v3, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showHideShadow(ZJ)V

    .line 693
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v3, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    sget-object v7, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v10, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda34;

    invoke-direct {v10, p0, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;J)V

    const/4 v4, 0x1

    const-wide/16 v5, 0x12c

    const-wide/16 v8, 0x0

    invoke-static/range {v3 .. v10}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    return-void
.end method

.method public showHideShadow(ZJ)V
    .locals 10

    .line 725
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlsShadow:Landroid/view/View;

    sget-object v6, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    move-object v5, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v8}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    move-object v6, v5

    move-wide v4, v3

    move v3, v2

    .line 726
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerTopShadow:Landroid/view/View;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 727
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v2, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerBottomShadow:Landroid/view/View;

    invoke-static/range {v2 .. v9}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    return-void
.end method

.method protected showOrHideButtons()V
    .locals 7

    .line 731
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 736
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 737
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v4, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 739
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v4, 0x4

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 741
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v2, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected showSystemUIPartially()V
    .locals 0

    .line 0
    return-void
.end method
