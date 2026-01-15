.class public final Lorg/schabi/newpipe/databinding/PlayerBinding;
.super Ljava/lang/Object;
.source "PlayerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final bottomControls:Landroid/widget/LinearLayout;

.field public final bottomSeekbarPreviewLayout:Landroid/widget/LinearLayout;

.field public final brightnessImageView:Landroidx/appcompat/widget/AppCompatImageView;

.field public final brightnessProgressBar:Landroid/widget/ProgressBar;

.field public final brightnessRelativeLayout:Landroid/widget/RelativeLayout;

.field public final captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final channelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final closeButton:Landroid/widget/Button;

.field public final closingOverlay:Landroid/view/View;

.field public final currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final currentSeekbarPreviewThumbnail:Landroid/widget/ImageView;

.field public final endScreen:Landroid/widget/ImageView;

.field public final fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

.field public final fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final itemsList:Landroidx/recyclerview/widget/RecyclerView;

.field public final itemsListClose:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final itemsListControl:Landroid/widget/RelativeLayout;

.field public final itemsListHeaderDuration:Landroidx/appcompat/widget/AppCompatTextView;

.field public final itemsListHeaderTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final itemsListPanel:Landroid/widget/RelativeLayout;

.field public final loadingPanel:Landroid/widget/RelativeLayout;

.field public final metadataView:Landroid/widget/LinearLayout;

.field public final moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final playbackControlRoot:Landroid/widget/RelativeLayout;

.field public final playbackControlsShadow:Landroid/view/View;

.field public final playbackCurrentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

.field public final playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final playbackWindowRoot:Landroid/widget/RelativeLayout;

.field public final playerBottomShadow:Landroid/view/View;

.field public final playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final playerOverlays:Landroid/widget/RelativeLayout;

.field public final playerTopShadow:Landroid/view/View;

.field public final primaryControls:Landroid/widget/LinearLayout;

.field public final progressBarLoadingPanel:Landroid/widget/ProgressBar;

.field public final qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final secondaryControls:Landroid/widget/LinearLayout;

.field public final seekbarPreviewContainer:Landroid/widget/LinearLayout;

.field public final segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final share:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field public final surfaceForeground:Landroid/view/View;

.field public final surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

.field public final switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final titleTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final topControls:Landroid/widget/LinearLayout;

.field public final volumeImageView:Landroidx/appcompat/widget/AppCompatImageView;

.field public final volumeProgressBar:Landroid/widget/ProgressBar;

.field public final volumeRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/FocusAwareSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Lcom/google/android/exoplayer2/ui/SubtitleView;Landroid/view/View;Lorg/schabi/newpipe/views/ExpandableSurfaceView;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 259
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 260
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 261
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomControls:Landroid/widget/LinearLayout;

    .line 262
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomSeekbarPreviewLayout:Landroid/widget/LinearLayout;

    .line 263
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 264
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessProgressBar:Landroid/widget/ProgressBar;

    .line 265
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    .line 266
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 267
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->channelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 268
    iput-object p11, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->closeButton:Landroid/widget/Button;

    .line 269
    iput-object p12, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->closingOverlay:Landroid/view/View;

    .line 270
    iput-object p13, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 271
    iput-object p14, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentSeekbarPreviewThumbnail:Landroid/widget/ImageView;

    .line 272
    iput-object p15, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    move-object/from16 p1, p16

    .line 273
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    move-object/from16 p1, p17

    .line 274
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p18

    .line 275
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 p1, p19

    .line 276
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListClose:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p20

    .line 277
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListControl:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p21

    .line 278
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderDuration:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p22

    .line 279
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderTitle:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p23

    .line 280
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p24

    .line 281
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p25

    .line 282
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->metadataView:Landroid/widget/LinearLayout;

    move-object/from16 p1, p26

    .line 283
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p27

    .line 284
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p28

    .line 285
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p29

    .line 286
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p30

    .line 287
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p31

    .line 288
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p32

    .line 289
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p33

    .line 290
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlsShadow:Landroid/view/View;

    move-object/from16 p1, p34

    .line 291
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackCurrentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p35

    .line 292
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p36

    .line 293
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p37

    .line 294
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    move-object/from16 p1, p38

    .line 295
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p39

    .line 296
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackWindowRoot:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p40

    .line 297
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerBottomShadow:Landroid/view/View;

    move-object/from16 p1, p41

    .line 298
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p42

    .line 299
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerOverlays:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p43

    .line 300
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerTopShadow:Landroid/view/View;

    move-object/from16 p1, p44

    .line 301
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->primaryControls:Landroid/widget/LinearLayout;

    move-object/from16 p1, p45

    .line 302
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->progressBarLoadingPanel:Landroid/widget/ProgressBar;

    move-object/from16 p1, p46

    .line 303
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p47

    .line 304
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p48

    .line 305
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p49

    .line 306
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p50

    .line 307
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p51

    .line 308
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    move-object/from16 p1, p52

    .line 309
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    move-object/from16 p1, p53

    .line 310
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p54

    .line 311
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p55

    .line 312
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p56

    .line 313
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-object/from16 p1, p57

    .line 314
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceForeground:Landroid/view/View;

    move-object/from16 p1, p58

    .line 315
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    move-object/from16 p1, p59

    .line 316
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    move-object/from16 p1, p60

    .line 317
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->titleTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p61

    .line 318
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    move-object/from16 p1, p62

    .line 319
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 p1, p63

    .line 320
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 p1, p64

    .line 321
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PlayerBinding;
    .locals 68

    move-object/from16 v0, p0

    const v1, 0x7f0a005f

    .line 352
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0072

    .line 358
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0089

    .line 364
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a008a

    .line 370
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0090

    .line 376
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0091

    .line 382
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ProgressBar;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0092

    .line 388
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0099

    .line 394
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a00a3

    .line 400
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a00b7

    .line 406
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_0

    const v1, 0x7f0a00b9

    .line 412
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    const v1, 0x7f0a00d4

    .line 418
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a00d5

    .line 424
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a013d

    .line 430
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a018a

    .line 436
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    if-eqz v19, :cond_0

    const v1, 0x7f0a01a5

    .line 442
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v20, :cond_0

    const v1, 0x7f0a01f5

    .line 448
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v21, :cond_0

    const v1, 0x7f0a01f6

    .line 454
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v22, :cond_0

    const v1, 0x7f0a01f7

    .line 460
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/RelativeLayout;

    if-eqz v23, :cond_0

    const v1, 0x7f0a01f8

    .line 466
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v24, :cond_0

    const v1, 0x7f0a01f9

    .line 472
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v25, :cond_0

    const v1, 0x7f0a01fa

    .line 478
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/RelativeLayout;

    if-eqz v26, :cond_0

    const v1, 0x7f0a020d

    .line 484
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/RelativeLayout;

    if-eqz v27, :cond_0

    const v1, 0x7f0a024c

    .line 490
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/LinearLayout;

    if-eqz v28, :cond_0

    const v1, 0x7f0a0259

    .line 496
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v29, :cond_0

    const v1, 0x7f0a02a5

    .line 502
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v30, :cond_0

    const v1, 0x7f0a02e8

    .line 508
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v31, :cond_0

    const v1, 0x7f0a02e9

    .line 514
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v32, :cond_0

    const v1, 0x7f0a02ea

    .line 520
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v33, :cond_0

    const v1, 0x7f0a02eb

    .line 526
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v34, :cond_0

    const v1, 0x7f0a02ed

    .line 532
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Landroid/widget/RelativeLayout;

    if-eqz v35, :cond_0

    const v1, 0x7f0a02ee

    .line 538
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_0

    const v1, 0x7f0a02ef

    .line 544
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v37, :cond_0

    const v1, 0x7f0a02f0

    .line 550
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v38, :cond_0

    const v1, 0x7f0a02f1

    .line 556
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v39, :cond_0

    const v1, 0x7f0a02f2

    .line 562
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    if-eqz v40, :cond_0

    const v1, 0x7f0a02f3

    .line 568
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v41, :cond_0

    const v1, 0x7f0a02f4

    .line 574
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Landroid/widget/RelativeLayout;

    if-eqz v42, :cond_0

    const v1, 0x7f0a02f9

    .line 580
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v43

    if-eqz v43, :cond_0

    const v1, 0x7f0a02fa

    .line 586
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v44, :cond_0

    const v1, 0x7f0a02fc

    .line 592
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Landroid/widget/RelativeLayout;

    if-eqz v45, :cond_0

    const v1, 0x7f0a02fb

    .line 598
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v46

    if-eqz v46, :cond_0

    const v1, 0x7f0a0312

    .line 604
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Landroid/widget/LinearLayout;

    if-eqz v47, :cond_0

    const v1, 0x7f0a0314

    .line 610
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v48, v2

    check-cast v48, Landroid/widget/ProgressBar;

    if-eqz v48, :cond_0

    const v1, 0x7f0a0318

    .line 616
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v49, v2

    check-cast v49, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v49, :cond_0

    const v1, 0x7f0a031b

    .line 622
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v50, v2

    check-cast v50, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v50, :cond_0

    const v1, 0x7f0a0327

    .line 628
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v51, v2

    check-cast v51, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v51, :cond_0

    const v1, 0x7f0a032a

    .line 634
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v52, v2

    check-cast v52, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v52, :cond_0

    const v1, 0x7f0a033a

    .line 640
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v53, v2

    check-cast v53, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v53, :cond_0

    const v1, 0x7f0a034d

    .line 646
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v54, v2

    check-cast v54, Landroid/widget/LinearLayout;

    if-eqz v54, :cond_0

    const v1, 0x7f0a0352

    .line 652
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v55, v2

    check-cast v55, Landroid/widget/LinearLayout;

    if-eqz v55, :cond_0

    const v1, 0x7f0a0354

    .line 658
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v56, v2

    check-cast v56, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v56, :cond_0

    const v1, 0x7f0a0364

    .line 664
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v57, v2

    check-cast v57, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v57, :cond_0

    const v1, 0x7f0a036b

    .line 670
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v58, v2

    check-cast v58, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v58, :cond_0

    const v1, 0x7f0a03a6

    .line 676
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v59, v2

    check-cast v59, Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v59, :cond_0

    const v1, 0x7f0a03ae

    .line 682
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v60

    if-eqz v60, :cond_0

    const v1, 0x7f0a03af

    .line 688
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v61, v2

    check-cast v61, Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    if-eqz v61, :cond_0

    const v1, 0x7f0a03b2

    .line 694
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v62, v2

    check-cast v62, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v62, :cond_0

    const v1, 0x7f0a03ee

    .line 700
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v63, v2

    check-cast v63, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v63, :cond_0

    const v1, 0x7f0a03f9

    .line 706
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v64, v2

    check-cast v64, Landroid/widget/LinearLayout;

    if-eqz v64, :cond_0

    const v1, 0x7f0a0422

    .line 712
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v65, v2

    check-cast v65, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v65, :cond_0

    const v1, 0x7f0a0423

    .line 718
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v66, v2

    check-cast v66, Landroid/widget/ProgressBar;

    if-eqz v66, :cond_0

    const v1, 0x7f0a0424

    .line 724
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v67, v2

    check-cast v67, Landroid/widget/RelativeLayout;

    if-eqz v67, :cond_0

    .line 729
    new-instance v3, Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v67}, Lorg/schabi/newpipe/databinding/PlayerBinding;-><init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/FocusAwareSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Lcom/google/android/exoplayer2/ui/SubtitleView;Landroid/view/View;Lorg/schabi/newpipe/views/ExpandableSurfaceView;Landroidx/appcompat/widget/AppCompatImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;)V

    return-object v3

    .line 744
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/PlayerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 332
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/PlayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/PlayerBinding;
    .locals 2

    const v0, 0x7f0d00da

    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 340
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PlayerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/PlayerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
