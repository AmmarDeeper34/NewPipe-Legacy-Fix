.class public final Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;
.super Ljava/lang/Object;
.source "DialogPlaybackParameterBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final additionalOptions:Landroid/widget/LinearLayout;

.field public final pitchControlContainer:Landroid/widget/RelativeLayout;

.field public final pitchControlModePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchControlModeSemitone:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchControlModeTabs:Landroid/widget/LinearLayout;

.field public final pitchControlText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchPercentControl:Landroid/widget/RelativeLayout;

.field public final pitchPercentCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchPercentDisplay:Landroid/widget/RelativeLayout;

.field public final pitchPercentMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchPercentMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchPercentSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public final pitchPercentStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchPercentStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchSemitoneControl:Landroid/widget/RelativeLayout;

.field public final pitchSemitoneCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchSemitoneDisplay:Landroid/widget/RelativeLayout;

.field public final pitchSemitoneMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchSemitoneMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchSemitoneSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public final pitchSemitoneStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchSemitoneStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final pitchToogleControlModes:Landroid/widget/ImageView;

.field public final playbackStepType:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroid/widget/ScrollView;

.field public final separatorCheckbox:Landroid/view/View;

.field public final separatorPitch:Landroid/view/View;

.field public final separatorStepSizeSelector:Landroid/view/View;

.field public final skipSilenceCheckbox:Landroid/widget/CheckBox;

.field public final stepSizeFivePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final stepSizeOneHundredPercent:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final stepSizeOnePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final stepSizeSelector:Landroid/widget/LinearLayout;

.field public final stepSizeTenPercent:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final stepSizeTwentyFivePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final tempoControl:Landroid/widget/RelativeLayout;

.field public final tempoControlText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final tempoCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final tempoMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final tempoMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final tempoSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public final tempoStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final tempoStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final unhookCheckbox:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/CheckBox;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->rootView:Landroid/widget/ScrollView;

    .line 185
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->additionalOptions:Landroid/widget/LinearLayout;

    .line 186
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlContainer:Landroid/widget/RelativeLayout;

    .line 187
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 188
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModeSemitone:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 189
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModeTabs:Landroid/widget/LinearLayout;

    .line 190
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 191
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentControl:Landroid/widget/RelativeLayout;

    .line 192
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 193
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentDisplay:Landroid/widget/RelativeLayout;

    .line 194
    iput-object p11, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 195
    iput-object p12, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 196
    iput-object p13, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 197
    iput-object p14, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 198
    iput-object p15, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p16

    .line 199
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneControl:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p17

    .line 200
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p18

    .line 201
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneDisplay:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p19

    .line 202
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p20

    .line 203
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p21

    .line 204
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    move-object/from16 p1, p22

    .line 205
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p23

    .line 206
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p24

    .line 207
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchToogleControlModes:Landroid/widget/ImageView;

    move-object/from16 p1, p25

    .line 208
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->playbackStepType:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p26

    .line 209
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->separatorCheckbox:Landroid/view/View;

    move-object/from16 p1, p27

    .line 210
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->separatorPitch:Landroid/view/View;

    move-object/from16 p1, p28

    .line 211
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->separatorStepSizeSelector:Landroid/view/View;

    move-object/from16 p1, p29

    .line 212
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->skipSilenceCheckbox:Landroid/widget/CheckBox;

    move-object/from16 p1, p30

    .line 213
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeFivePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p31

    .line 214
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeOneHundredPercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p32

    .line 215
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeOnePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p33

    .line 216
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeSelector:Landroid/widget/LinearLayout;

    move-object/from16 p1, p34

    .line 217
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeTenPercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p35

    .line 218
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeTwentyFivePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p36

    .line 219
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoControl:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p37

    .line 220
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoControlText:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p38

    .line 221
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p39

    .line 222
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p40

    .line 223
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p41

    .line 224
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    move-object/from16 p1, p42

    .line 225
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p43

    .line 226
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    move-object/from16 p1, p44

    .line 227
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->unhookCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;
    .locals 48

    move-object/from16 v0, p0

    const v1, 0x7f0a0060

    .line 258
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a02d1

    .line 264
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a02d2

    .line 270
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a02d3

    .line 276
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a02d4

    .line 282
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a02d5

    .line 288
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a02d6

    .line 294
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a02d7

    .line 300
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a02d8

    .line 306
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a02d9

    .line 312
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a02da

    .line 318
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a02db

    .line 324
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v16, :cond_0

    const v1, 0x7f0a02dc

    .line 330
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a02dd

    .line 336
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a02de

    .line 342
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RelativeLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f0a02df

    .line 348
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a02e0

    .line 354
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/RelativeLayout;

    if-eqz v21, :cond_0

    const v1, 0x7f0a02e1

    .line 360
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v22, :cond_0

    const v1, 0x7f0a02e2

    .line 366
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v23, :cond_0

    const v1, 0x7f0a02e3

    .line 372
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v24, :cond_0

    const v1, 0x7f0a02e4

    .line 378
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v25, :cond_0

    const v1, 0x7f0a02e5

    .line 384
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v26, :cond_0

    const v1, 0x7f0a02e6

    .line 390
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/ImageView;

    if-eqz v27, :cond_0

    const v1, 0x7f0a02f8

    .line 396
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v28, :cond_0

    const v1, 0x7f0a035e

    .line 402
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v29

    if-eqz v29, :cond_0

    const v1, 0x7f0a035f

    .line 408
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_0

    const v1, 0x7f0a0360

    .line 414
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_0

    const v1, 0x7f0a036e

    .line 420
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/CheckBox;

    if-eqz v32, :cond_0

    const v1, 0x7f0a0391

    .line 426
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v33, :cond_0

    const v1, 0x7f0a0392

    .line 432
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v34, :cond_0

    const v1, 0x7f0a0393

    .line 438
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v35, :cond_0

    const v1, 0x7f0a0394

    .line 444
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/LinearLayout;

    if-eqz v36, :cond_0

    const v1, 0x7f0a0395

    .line 450
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v37, :cond_0

    const v1, 0x7f0a0396

    .line 456
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v38, :cond_0

    const v1, 0x7f0a03c8

    .line 462
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Landroid/widget/RelativeLayout;

    if-eqz v39, :cond_0

    const v1, 0x7f0a03c9

    .line 468
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v40, :cond_0

    const v1, 0x7f0a03ca

    .line 474
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v41, :cond_0

    const v1, 0x7f0a03cb

    .line 480
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v42, :cond_0

    const v1, 0x7f0a03cc

    .line 486
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v43, :cond_0

    const v1, 0x7f0a03cd

    .line 492
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v44, :cond_0

    const v1, 0x7f0a03ce

    .line 498
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v45, :cond_0

    const v1, 0x7f0a03cf

    .line 504
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v46, :cond_0

    const v1, 0x7f0a0408

    .line 510
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Landroid/widget/CheckBox;

    if-eqz v47, :cond_0

    .line 515
    new-instance v3, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct/range {v3 .. v47}, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/CheckBox;)V

    return-object v3

    .line 529
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;
    .locals 2

    const v0, 0x7f0d0037

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
