.class public final Lorg/schabi/newpipe/settings/SettingsResourceRegistry;
.super Ljava/lang/Object;
.source "SettingsResourceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/schabi/newpipe/settings/SettingsResourceRegistry;


# instance fields
.field private final registeredEntries:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$ef1ULFLVA5IuAbw4vOzTlr9Q4l0(Ljava/lang/Class;Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;)Z
    .locals 0

    .line 62
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getFragmentClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ltWjPVc-HvSw1d4CuFJ6tCYdW60(ILorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;)Z
    .locals 0

    .line 69
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getPreferencesResId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->INSTANCE:Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/Set;

    .line 32
    const-class v0, Lorg/schabi/newpipe/settings/MainSettingsFragment;

    const v1, 0x7f150009

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->setSearchable(Z)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 34
    const-class v0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment;

    const v2, 0x7f150001

    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 35
    const-class v0, Lorg/schabi/newpipe/settings/ContentSettingsFragment;

    const v2, 0x7f150004

    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 36
    const-class v0, Lorg/schabi/newpipe/settings/DebugSettingsFragment;

    const v2, 0x7f150005

    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->setSearchable(Z)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 37
    const-class v0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;

    const v1, 0x7f150006

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 38
    const-class v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;

    const v1, 0x7f150008

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 39
    const-class v0, Lorg/schabi/newpipe/settings/NotificationSettingsFragment;

    const v1, 0x7f15000b

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 40
    const-class v0, Lorg/schabi/newpipe/settings/PlayerNotificationSettingsFragment;

    const v1, 0x7f15000c

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 41
    const-class v0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;

    const v1, 0x7f15000d

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 42
    const-class v0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;

    const v1, 0x7f15000e

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 43
    const-class v0, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;

    const v1, 0x7f150007

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 44
    const-class v0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    const v1, 0x7f150003

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    return-void
.end method

.method private add(Ljava/lang/Class;I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
    .locals 1

    .line 51
    new-instance v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;-><init>(Ljava/lang/Class;I)V

    .line 53
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getInstance()Lorg/schabi/newpipe/settings/SettingsResourceRegistry;
    .locals 1

    .line 95
    sget-object v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->INSTANCE:Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    return-object v0
.end method


# virtual methods
.method public getAllEntries()Ljava/util/Set;
    .locals 2

    .line 91
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getEntryByFragmentClass(Ljava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
    .locals 2

    .line 60
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/Set;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 62
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 63
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    return-object p1
.end method

.method public getEntryByPreferencesResId(I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/Set;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$$ExternalSyntheticLambda1;-><init>(I)V

    .line 69
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    return-object p1
.end method

.method public getFragmentClass(I)Ljava/lang/Class;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getEntryByPreferencesResId(I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getFragmentClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getPreferencesResId(Ljava/lang/Class;)I
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getEntryByFragmentClass(Ljava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 79
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getPreferencesResId()I

    move-result p1

    return p1
.end method
