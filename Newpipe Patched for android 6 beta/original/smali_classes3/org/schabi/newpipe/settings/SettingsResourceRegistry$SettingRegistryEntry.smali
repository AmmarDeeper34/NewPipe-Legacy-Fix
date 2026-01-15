.class public Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
.super Ljava/lang/Object;
.source "SettingsResourceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/SettingsResourceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingRegistryEntry"
.end annotation


# instance fields
.field private final fragmentClass:Ljava/lang/Class;

.field private final preferencesResId:I

.field private searchable:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->searchable:Z

    .line 111
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->fragmentClass:Ljava/lang/Class;

    .line 112
    iput p2, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 143
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getPreferencesResId()I

    move-result v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getPreferencesResId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 144
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getFragmentClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getFragmentClass()Ljava/lang/Class;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->fragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getPreferencesResId()I
    .locals 1

    .line 127
    iget v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 149
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getFragmentClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->getPreferencesResId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSearchable()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->searchable:Z

    return v0
.end method

.method public setSearchable(Z)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->searchable:Z

    return-object p0
.end method
