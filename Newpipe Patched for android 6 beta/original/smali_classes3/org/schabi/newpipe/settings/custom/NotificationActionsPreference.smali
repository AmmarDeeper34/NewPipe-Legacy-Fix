.class public Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;
.super Landroidx/preference/Preference;
.source "NotificationActionsPreference.java"


# instance fields
.field private compactSlots:Ljava/util/List;

.field private notificationSlots:[Lorg/schabi/newpipe/settings/custom/NotificationSlot;


# direct methods
.method public static synthetic $r8$lambda$WWp40oruPIzhtpJU92TtcpMqvZc(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;ILandroid/widget/CheckBox;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->onToggleCompactSlot(ILandroid/widget/CheckBox;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YsJdW6l4IF87djmA3SOluCCHPKg(I)[Lorg/schabi/newpipe/settings/custom/NotificationSlot;
    .locals 0

    .line 76
    new-array p0, p0, [Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    return-object p0
.end method

.method public static synthetic $r8$lambda$fg0v0HdEJbyAtHbgzpLpbmyT-ao(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;Landroid/view/View;I)Lorg/schabi/newpipe/settings/custom/NotificationSlot;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->lambda$setupActions$0(Landroid/view/View;I)Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d00fe

    .line 31
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$setupActions$0(Landroid/view/View;I)Lorg/schabi/newpipe/settings/custom/NotificationSlot;
    .locals 7

    .line 74
    new-instance v0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/List;

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    new-instance v6, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;)V

    move-object v4, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILandroid/view/View;ZLjava/util/function/BiConsumer;)V

    return-object v0
.end method

.method private onToggleCompactSlot(ILandroid/widget/CheckBox;)V
    .locals 2

    .line 80
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_0
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->toggle()V

    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12031c

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private saveChanges()V
    .locals 5

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->notificationSlots:[Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 104
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_PREF_KEYS:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    iget-object v4, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    .line 104
    :goto_1
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 110
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_PREF_KEYS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->notificationSlots:[Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    aget-object v3, v3, v1

    .line 111
    invoke-virtual {v3}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->getSelectedAction()I

    move-result v3

    .line 110
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method private setupActions(Landroid/view/View;)V
    .locals 3

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/notification/NotificationConstants;->getCompactSlotsFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->compactSlots:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 73
    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;Landroid/view/View;)V

    .line 74
    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference$$ExternalSyntheticLambda1;-><init>()V

    .line 76
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->notificationSlots:[Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 48
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a03ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12031e

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 53
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->setupActions(Landroid/view/View;)V

    return-void
.end method

.method public onDetached()V
    .locals 3

    .line 58
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 59
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/custom/NotificationActionsPreference;->saveChanges()V

    .line 61
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.schabi.newpipe"

    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
