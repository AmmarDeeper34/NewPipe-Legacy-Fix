.class public abstract Lorg/schabi/newpipe/player/notification/NotificationConstants;
.super Ljava/lang/Object;
.source "NotificationConstants.java"


# static fields
.field public static final ACTION_ICONS:[I

.field public static final ALL_ACTIONS:[I

.field public static final SLOT_COMPACT_DEFAULTS:Ljava/util/List;

.field public static final SLOT_COMPACT_PREF_KEYS:[I

.field public static final SLOT_DEFAULTS:[I

.field public static final SLOT_PREF_KEYS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    .line 74
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ALL_ACTIONS:[I

    .line 79
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ACTION_ICONS:[I

    const/4 v0, 0x5

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/16 v3, 0x9

    const/16 v4, 0xb

    .line 96
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    const v0, 0x7f12032a

    const v1, 0x7f12032b

    const v2, 0x7f120327

    const v3, 0x7f120328

    const v4, 0x7f120329

    .line 104
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_PREF_KEYS:[I

    const/4 v0, 0x0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_DEFAULTS:Ljava/util/List;

    const v0, 0x7f12032d

    const v1, 0x7f12032e

    const v2, 0x7f12032c

    .line 115
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_PREF_KEYS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7f0800b3
        0x7f0800b0
        0x7f0800b7
        0x7f0800ad
        0x7f0800b3
        0x7f0800b0
        0x7f080132
        0x7f080119
        0x7f0800b4
        0x7f0800b9
        0x7f0800fd
    .end array-data
.end method

.method public static getActionName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    const v0, 0x7f120173

    const v1, 0x7f120177

    const v2, 0x7f12016d

    const v3, 0x7f120169

    const v4, 0x7f120170

    const v5, 0x7f120171

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f120319

    .line 168
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const p1, 0x7f1200a7

    .line 166
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f12031b

    .line 164
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f12031a

    .line 162
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 156
    :pswitch_3
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120318

    .line 160
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :pswitch_4
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :pswitch_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :pswitch_6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :pswitch_7
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :pswitch_8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :pswitch_9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :pswitch_a
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCompactSlotsFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Collection;
    .locals 4

    .line 181
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 183
    sget-object v2, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_PREF_KEYS:[I

    aget v2, v2, v1

    .line 184
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7fffffff

    .line 183
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 188
    sget-object p0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_DEFAULTS:Ljava/util/List;

    return-object p0

    :cond_0
    if-ltz v2, :cond_1

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
