.class Lorg/schabi/newpipe/settings/custom/NotificationSlot;
.super Ljava/lang/Object;
.source "NotificationSlot.java"


# static fields
.field private static final SLOT_ITEMS:[I

.field private static final SLOT_TITLES:[I


# instance fields
.field private final context:Landroid/content/Context;

.field private final i:I

.field private icon:Landroid/widget/ImageView;

.field private final onToggleCompactSlot:Ljava/util/function/BiConsumer;

.field private selectedAction:I

.field private summary:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$l0pOzngykEK8apd8K9U0yQyI_eo(Lorg/schabi/newpipe/settings/custom/NotificationSlot;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->lambda$openActionChooserDialog$2(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$log9E3gx_le6p3D7ONWb8SGloys(Lorg/schabi/newpipe/settings/custom/NotificationSlot;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->lambda$setupCheckbox$1(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tstelT29VbgUsmnyO2TwlXyAa44(Lorg/schabi/newpipe/settings/custom/NotificationSlot;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->lambda$setupTitle$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f0a0295

    const v1, 0x7f0a0296

    const v2, 0x7f0a0292

    const v3, 0x7f0a0293

    const v4, 0x7f0a0294

    .line 33
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_ITEMS:[I

    const v0, 0x7f120316

    const v1, 0x7f120317

    const v2, 0x7f120313

    const v3, 0x7f120314

    const v4, 0x7f120315

    .line 41
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_TITLES:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILandroid/view/View;ZLjava/util/function/BiConsumer;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    .line 64
    iput p3, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->i:I

    .line 65
    iput-object p6, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->onToggleCompactSlot:Ljava/util/function/BiConsumer;

    .line 67
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    sget-object p6, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_PREF_KEYS:[I

    aget p6, p6, p3

    .line 68
    invoke-virtual {p1, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p6, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    aget p6, p6, p3

    .line 67
    invoke-interface {p2, p1, p6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    .line 70
    sget-object p1, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_ITEMS:[I

    aget p1, p1, p3

    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 73
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x21

    if-lt p2, p4, :cond_1

    const/4 p2, 0x3

    if-lt p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->setupSelectedAction(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->setupTitle(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0, p1, p5}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->setupCheckbox(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$openActionChooserDialog$2(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    .line 133
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ALL_ACTIONS:[I

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    aget p2, v0, p2

    iput p2, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    .line 134
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->updateInfo()V

    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$setupCheckbox$1(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p2, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->onToggleCompactSlot:Ljava/util/function/BiConsumer;

    iget v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setupTitle$0(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->openActionChooserDialog()V

    return-void
.end method


# virtual methods
.method public getSelectedAction()I
    .locals 1

    .line 170
    iget v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    return v0
.end method

.method openActionChooserDialog()V
    .locals 11

    .line 122
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;

    move-result-object v1

    .line 126
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_TITLES:[I

    iget v4, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->i:I

    aget v3, v3, v4

    .line 127
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 129
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 132
    new-instance v4, Lorg/schabi/newpipe/settings/custom/NotificationSlot$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lorg/schabi/newpipe/settings/custom/NotificationSlot$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/custom/NotificationSlot;Landroidx/appcompat/app/AlertDialog;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 138
    :goto_0
    sget-object v7, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ALL_ACTIONS:[I

    array-length v8, v7

    if-ge v6, v8, :cond_2

    .line 139
    aget v7, v7, v6

    .line 140
    invoke-static {v0}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;

    move-result-object v8

    .line 141
    invoke-virtual {v8}, Lorg/schabi/newpipe/databinding/ListRadioIconItemBinding;->getRoot()Landroid/widget/RadioButton;

    move-result-object v8

    .line 144
    sget-object v9, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ACTION_ICONS:[I

    aget v9, v9, v7

    if-eqz v9, :cond_0

    .line 146
    invoke-virtual {v8, v5, v5, v9, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 148
    iget-object v9, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    const v10, 0x1010036

    .line 149
    invoke-static {v9, v10}, Lorg/schabi/newpipe/util/ThemeHelper;->resolveColorFromAttr(Landroid/content/Context;I)I

    move-result v9

    .line 148
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 150
    invoke-static {v8, v9}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 153
    :cond_0
    iget-object v9, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    invoke-static {v9, v7}, Lorg/schabi/newpipe/player/notification/NotificationConstants;->getActionName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget v9, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 155
    invoke-virtual {v8, v6}, Landroid/view/View;->setId(I)V

    .line 156
    new-instance v7, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v8, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v7, v1, Lorg/schabi/newpipe/databinding/SingleChoiceDialogViewBinding;->list:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 163
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    invoke-static {v2}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupFocusObserver(Landroid/app/Dialog;)V

    :cond_3
    return-void
.end method

.method setupCheckbox(Landroid/view/View;Z)V
    .locals 4

    const v0, 0x7f0a0297

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const v3, 0x7f0a0298

    if-lt v1, v2, :cond_0

    const/16 p2, 0x8

    .line 93
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 100
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/settings/custom/NotificationSlot$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/settings/custom/NotificationSlot$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/custom/NotificationSlot;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setupSelectedAction(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a029a

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a029b

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->summary:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->updateInfo()V

    return-void
.end method

.method setupTitle(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a029c

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_TITLES:[I

    iget v2, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->i:I

    aget v1, v1, v2

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0299

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/custom/NotificationSlot$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/custom/NotificationSlot$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/custom/NotificationSlot;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method updateInfo()V
    .locals 3

    .line 111
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ACTION_ICONS:[I

    iget v1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    iget v2, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/notification/NotificationConstants;->getActionName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
