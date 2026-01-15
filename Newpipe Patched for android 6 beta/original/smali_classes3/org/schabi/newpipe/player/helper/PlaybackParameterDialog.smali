.class public Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PlaybackParameterDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;
    }
.end annotation


# static fields
.field private static final QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;

.field private static final SEMITONE_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;


# instance fields
.field private binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

.field private callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

.field initialPitchPercent:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field initialSkipSilence:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field initialTempo:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field pitchPercent:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field skipSilence:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field tempo:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$09GPguYGnbcERwFj7cVFUtXWDLQ(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)D
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$initUI$3()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$1_YoRV0plKMVMPsPRP6xeJNlvUk(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;DLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$registerOnStepClickListener$10(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;DLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$28q6gCpDAjhDUm75TzS5Q0ZJjPo(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)D
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$initUI$6()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$2sKnTlYftUVdlZcaVIcyKGgtr7I(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)D
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$initUI$4()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$65ZfIkorn4amBTzthXIhedzr5CA(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$initUI$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8jrK8tNRvnhiVt7sFL8GZ9F1Ivo(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)D
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$initUI$7()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$Dy31ZB4t75j37johFB7DzpNXhaY(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/lang/Boolean;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$changePitchControlMode$13(Ljava/lang/Boolean;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O6ne0nnbitvkxocw9D7kgIuj8mI(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;ILjava/util/function/Consumer;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$bindCheckboxWithBoolPref$16(ILjava/util/function/Consumer;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UoYTWBzj6XfCHm7sXbYP7iA9r74(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;D)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->onTempoSliderUpdated(D)V

    return-void
.end method

.method public static synthetic $r8$lambda$VRQAtVxysUNu1oRYloivsJMvaR4(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$initUI$9(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zr4uqCOJY5xQSWEal5LBVbmzmE0(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;DLandroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setupStepTextView(DLandroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgRVb478RreUNeCaaZJLWJoVS7A(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$registerOnSemitoneStepClickListener$11(Ljava/util/function/DoubleConsumer;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fagWfKty08v-_7oAybQ25DzzjI0(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;DLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$setupStepTextView$14(DLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jy77RKdw7hxHcxYHfKUsXK-Tis4(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mDaSVM-Mdbkwc7QRrE-Cvg1GGMQ(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;D)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->onPitchPercentSliderUpdated(D)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2pXAooTrNp2d8K2IJzpQyI4jOM(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qWYSV5ULFDDHY4ogTdoCv2sv8Ew(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$initUI$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r6AN41DJYd6fyQKMGJVKwscIVn4(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/lang/Double;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$setStepSizeToUI$15(Ljava/lang/Double;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vJMvw560uBiaYALOldZ49ILDK34(D)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getPercentString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vk21oYB-T_6MCCBMK0lhKGc4m6g(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$setupPitchControlModeTextView$12(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpdFEGpokbh3EwlQnifRHqFmfOA(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zfY0v5tWyAzthDJzyq4kX2YxMNY(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;ZLandroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setupPitchControlModeTextView(ZLandroid/widget/TextView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCallback(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 63
    new-instance v0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/16 v7, 0x2710

    const-wide v1, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;-><init>(DDDI)V

    sput-object v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;

    .line 69
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->SEMITONE_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 84
    iput-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    .line 86
    iput-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    const/4 v2, 0x0

    .line 88
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    .line 91
    iput-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 93
    iput-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 95
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    return-void
.end method

.method private bindCheckboxWithBoolPref(Landroid/widget/CheckBox;IZLjava/util/function/Consumer;)V
    .locals 2

    .line 455
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 456
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 458
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 460
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 462
    new-instance p3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda19;

    invoke-direct {p3, p0, p2, p4}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;ILjava/util/function/Consumer;)V

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private calcValidPitch(D)D
    .locals 6

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-wide v0, p1

    .line 548
    invoke-static/range {v0 .. v5}, Landroidx/core/math/MathUtils;->clamp(DDD)D

    move-result-wide p1

    .line 550
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->isCurrentPitchControlModeSemitone()Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    .line 555
    :cond_0
    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->percentToSemitones(D)I

    move-result p1

    .line 554
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->semitonesToPercent(I)D

    move-result-wide p1

    return-wide p1
.end method

.method private changePitchControlMode(Z)V
    .locals 6

    .line 341
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getPitchControlModeComponentMappings()Ljava/util/Map;

    move-result-object v0

    .line 342
    new-instance v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 346
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040184

    invoke-static {v3, v4}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x101030e

    invoke-static {v4, v5}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v5, v1

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-direct {v2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentControl:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneControl:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 361
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->calcValidPitch(D)D

    move-result-wide v0

    .line 364
    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    cmpl-double p1, v2, v0

    if-eqz p1, :cond_5

    .line 365
    sget-boolean p1, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bringing pitchPercent to correct corresponding semitone: currentPitchPercent = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", newPitchPercent = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PlaybackParameterDialog"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_3
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->onPitchPercentSliderUpdated(D)V

    .line 372
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    return-void

    .line 374
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->unhookCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_5

    .line 376
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->ensureHookIsValidAndUpdateCallBack()V

    :cond_5
    return-void
.end method

.method private ensureHookIsValidAndUpdateCallBack()V
    .locals 5

    .line 479
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 480
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setSliders(D)V

    .line 481
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    :cond_0
    return-void
.end method

.method private getCurrentStepSize()D
    .locals 3

    .line 436
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120021

    .line 437
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private static getPercentString(D)Ljava/lang/String;
    .locals 0

    .line 588
    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatPitch(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPitchControlModeComponentMappings()Ljava/util/Map;
    .locals 4

    .line 334
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v2, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 335
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModeSemitone:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 334
    invoke-static {v0, v2, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getStepDownPercentString(D)Ljava/lang/String;
    .locals 2

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getPercentString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStepSizeComponentMappings()Ljava/util/Map;
    .locals 12

    const-wide v0, 0x3f847ae140000000L    # 0.009999999776482582

    .line 405
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v3, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeOnePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-wide v0, 0x3fa99999a0000000L    # 0.05000000074505806

    .line 406
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v5, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeFivePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 407
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v7, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeTenPercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 408
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v9, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeTwentyFivePercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 409
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v11, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->stepSizeOneHundredPercent:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 405
    invoke-static/range {v2 .. v11}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getStepUpPercentString(D)Ljava/lang/String;
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getPercentString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTempoOrPitchSeekbarChangeListener(Lorg/schabi/newpipe/util/SliderStrategy;Ljava/util/function/DoubleConsumer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 493
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Lorg/schabi/newpipe/util/SliderStrategy;)V

    return-object v0
.end method

.method private initUI()V
    .locals 11

    .line 178
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda4;-><init>()V

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-direct {p0, v1, v2, v6, v7}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 179
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda4;-><init>()V

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-direct {p0, v1, v2, v8, v9}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 181
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    sget-object v10, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;

    invoke-interface {v10, v8, v9}, Lorg/schabi/newpipe/util/SliderStrategy;->progressOf(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 182
    iget-wide v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 183
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    .line 184
    invoke-direct {p0, v10, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getTempoOrPitchSeekbarChangeListener(Lorg/schabi/newpipe/util/SliderStrategy;Ljava/util/function/DoubleConsumer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 188
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    new-instance v5, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->registerOnStepClickListener(Landroid/widget/TextView;Ljava/util/function/DoubleSupplier;DLjava/util/function/DoubleConsumer;)V

    .line 193
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    new-instance v5, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->registerOnStepClickListener(Landroid/widget/TextView;Ljava/util/function/DoubleSupplier;DLjava/util/function/DoubleConsumer;)V

    .line 200
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchToogleControlModes:Landroid/widget/ImageView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getPitchControlModeComponentMappings()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda17;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    .line 212
    invoke-static {v1, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 216
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentMinimumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v1, v2, v6, v7}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 217
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentMaximumText:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v1, v2, v8, v9}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 219
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-interface {v10, v8, v9}, Lorg/schabi/newpipe/util/SliderStrategy;->progressOf(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 220
    iget-wide v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 221
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    .line 222
    invoke-direct {p0, v10, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getTempoOrPitchSeekbarChangeListener(Lorg/schabi/newpipe/util/SliderStrategy;Ljava/util/function/DoubleConsumer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 226
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    new-instance v5, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->registerOnStepClickListener(Landroid/widget/TextView;Ljava/util/function/DoubleSupplier;DLjava/util/function/DoubleConsumer;)V

    .line 231
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    new-instance v5, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->registerOnStepClickListener(Landroid/widget/TextView;Ljava/util/function/DoubleSupplier;DLjava/util/function/DoubleConsumer;)V

    .line 238
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    sget-object v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->SEMITONE_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;

    new-instance v3, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    .line 239
    invoke-direct {p0, v2, v3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getTempoOrPitchSeekbarChangeListener(Lorg/schabi/newpipe/util/SliderStrategy;Ljava/util/function/DoubleConsumer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 243
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const/4 v3, -0x1

    invoke-direct {p0, v1, v3, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->registerOnSemitoneStepClickListener(Landroid/widget/TextView;ILjava/util/function/DoubleConsumer;)V

    .line 247
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->registerOnSemitoneStepClickListener(Landroid/widget/TextView;ILjava/util/function/DoubleConsumer;)V

    .line 253
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getStepSizeComponentMappings()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    .line 254
    invoke-static {v1, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 256
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getCurrentStepSize()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setStepSizeToUI(D)V

    .line 259
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->unhookCheckbox:Landroid/widget/CheckBox;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const v4, 0x7f12036d

    invoke-direct {p0, v1, v4, v3, v2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->bindCheckboxWithBoolPref(Landroid/widget/CheckBox;IZLjava/util/function/Consumer;)V

    .line 270
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateSkipSilence(Z)V

    .line 271
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->skipSilenceCheckbox:Landroid/widget/CheckBox;

    new-instance v2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->isCurrentPitchControlModeSemitone()Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->changePitchControlMode(Z)V

    return-void
.end method

.method private isCurrentPitchControlModeSemitone()Z
    .locals 3

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f120364

    .line 383
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 382
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$bindCheckboxWithBoolPref$16(ILjava/util/function/Consumer;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 464
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 465
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 466
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 467
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$changePitchControlMode$13(Ljava/lang/Boolean;Landroid/widget/TextView;)V
    .locals 1

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x101030e

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 342
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$initUI$3()D
    .locals 2

    .line 190
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    return-wide v0
.end method

.method private synthetic lambda$initUI$4()D
    .locals 2

    .line 195
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    return-wide v0
.end method

.method private synthetic lambda$initUI$5(Landroid/view/View;)V
    .locals 4

    .line 201
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModeTabs:Landroid/widget/LinearLayout;

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 203
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchControlModeTabs:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchToogleControlModes:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    :cond_2
    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3, v0}, Lorg/schabi/newpipe/ktx/ViewUtils;->animateRotation(Landroid/view/View;JI)V

    return-void
.end method

.method private synthetic lambda$initUI$6()D
    .locals 2

    .line 228
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    return-wide v0
.end method

.method private synthetic lambda$initUI$7()D
    .locals 2

    .line 233
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    return-wide v0
.end method

.method private synthetic lambda$initUI$8(Ljava/lang/Boolean;)V
    .locals 0

    .line 264
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 266
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->ensureHookIsValidAndUpdateCallBack()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initUI$9(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 272
    iput-boolean p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 273
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 156
    iget-wide p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 157
    iget-wide p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 158
    iget-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateSkipSilence(Z)V

    .line 159
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 162
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 163
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    const/4 p1, 0x0

    .line 164
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateSkipSilence(Z)V

    .line 165
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    return-void
.end method

.method private synthetic lambda$registerOnSemitoneStepClickListener$11(Ljava/util/function/DoubleConsumer;ILandroid/view/View;)V
    .locals 2

    .line 311
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 312
    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->percentToSemitones(D)I

    move-result p3

    add-int/2addr p3, p2

    .line 311
    invoke-static {p3}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->semitonesToPercent(I)D

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 313
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    return-void
.end method

.method private synthetic lambda$registerOnStepClickListener$10(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;DLandroid/view/View;)V
    .locals 6

    .line 300
    invoke-interface {p2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getCurrentStepSize()D

    move-result-wide v4

    mul-double v4, v4, v2

    mul-double v4, v4, p3

    add-double/2addr v0, v4

    .line 299
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 301
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    return-void
.end method

.method private synthetic lambda$setStepSizeToUI$15(Ljava/lang/Double;Landroid/widget/TextView;)V
    .locals 1

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x101030e

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 415
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setupPitchControlModeTextView$12(ZLandroid/view/View;)V
    .locals 1

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 325
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const v0, 0x7f120364

    .line 326
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 327
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->changePitchControlMode(Z)V

    return-void
.end method

.method private synthetic lambda$setupStepTextView$14(DLandroid/view/View;)V
    .locals 2

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 396
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const v0, 0x7f120021

    .line 397
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    double-to-float v1, p1

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 398
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 400
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setStepSizeToUI(D)V

    return-void
.end method

.method public static newInstance(DDZLorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;)Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;
    .locals 1

    .line 106
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;-><init>()V

    .line 107
    iput-object p5, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    .line 109
    iput-wide p0, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    .line 110
    iput-wide p2, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    .line 111
    iput-boolean p4, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    .line 113
    iput-wide p0, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 114
    iput-wide p2, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 115
    iput-boolean p4, v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    return-object v0
.end method

.method private onPitchPercentSliderUpdated(D)V
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->unhookCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setSliders(D)V

    return-void

    .line 518
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    return-void
.end method

.method private onTempoSliderUpdated(D)V
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->unhookCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setSliders(D)V

    return-void

    .line 510
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    return-void
.end method

.method private registerOnSemitoneStepClickListener(Landroid/widget/TextView;ILjava/util/function/DoubleConsumer;)V
    .locals 1

    .line 310
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p3, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private registerOnStepClickListener(Landroid/widget/TextView;Ljava/util/function/DoubleSupplier;DLjava/util/function/DoubleConsumer;)V
    .locals 6

    .line 298
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;D)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setAndUpdatePitch(D)V
    .locals 2

    .line 535
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->calcValidPitch(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 537
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    sget-object v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;

    invoke-interface {v1, p1, p2}, Lorg/schabi/newpipe/util/SliderStrategy;->progressOf(D)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 538
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    sget-object p2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->SEMITONE_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;

    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    invoke-interface {p2, v0, v1}, Lorg/schabi/newpipe/util/SliderStrategy;->progressOf(D)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 539
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance p2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda5;-><init>()V

    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 542
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchSemitoneCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance p2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda6;-><init>()V

    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    return-void
.end method

.method private setAndUpdateSkipSilence(Z)V
    .locals 1

    .line 443
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 444
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->skipSilenceCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method private setAndUpdateTempo(D)V
    .locals 6

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-wide v0, p1

    .line 528
    invoke-static/range {v0 .. v5}, Landroidx/core/math/MathUtils;->clamp(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 530
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    sget-object v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->QUADRATIC_STRATEGY:Lorg/schabi/newpipe/util/SliderStrategy;

    invoke-interface {v1, p1, p2}, Lorg/schabi/newpipe/util/SliderStrategy;->progressOf(D)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 531
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoCurrentText:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance p2, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda4;-><init>()V

    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    return-void
.end method

.method private setSliders(D)V
    .locals 0

    .line 523
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 524
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    return-void
.end method

.method private setStepSizeToUI(D)V
    .locals 6

    .line 414
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getStepSizeComponentMappings()Ljava/util/Map;

    move-result-object v0

    .line 415
    new-instance v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda25;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 419
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 421
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040184

    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x101030e

    invoke-static {v3, v4}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getStepUpPercentString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->tempoStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getStepDownPercentString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepUp:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getStepUpPercentString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->pitchPercentStepDown:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->getStepDownPercentString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V
    .locals 0

    .line 287
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p3, p4}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupPitchControlModeTextView(ZLandroid/widget/TextView;)V
    .locals 1

    .line 323
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda18;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupStepTextView(DLandroid/widget/TextView;)V
    .locals 1

    .line 393
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda23;-><init>()V

    invoke-direct {p0, p3, v0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setText(Landroid/widget/TextView;Ljava/util/function/DoubleFunction;D)V

    .line 394
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda24;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;D)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateCallback()V
    .locals 4

    .line 563
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating callback: tempo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", pitchPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", skipSilence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackParameterDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    iget-wide v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    double-to-float v1, v1

    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    double-to-float v2, v2

    iget-boolean v3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    invoke-interface {v0, v1, v2, v3}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;->onPlaybackParameterChanged(FFZ)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 127
    instance-of v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    if-eqz v0, :cond_0

    .line 128
    check-cast p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    return-void

    .line 129
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->callback:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;

    if-nez p1, :cond_1

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 147
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 150
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initUI()V

    .line 152
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->binding:Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;

    .line 153
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/DialogPlaybackParameterBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const v1, 0x7f120070

    .line 155
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const v1, 0x7f120367

    .line 161
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;)V

    const v1, 0x7f120332

    .line 167
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
