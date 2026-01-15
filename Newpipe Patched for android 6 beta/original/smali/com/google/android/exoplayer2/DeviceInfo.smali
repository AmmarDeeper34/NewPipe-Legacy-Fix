.class public final Lcom/google/android/exoplayer2/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DeviceInfo$Builder;,
        Lcom/google/android/exoplayer2/DeviceInfo$PlaybackType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_VOLUME:Ljava/lang/String;

.field private static final FIELD_MIN_VOLUME:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_TYPE:Ljava/lang/String;

.field private static final FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I

.field public final routingControllerId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Wbhor1IfAYAk9tLi9wfehF2yekg(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 4

    .line 223
    sget-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 225
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 226
    sget-object v3, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 227
    sget-object v3, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 228
    new-instance v3, Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;-><init>(I)V

    .line 229
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMinVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMaxVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setRoutingControllerId(Ljava/lang/String;)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->build()Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->build()Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 197
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 198
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    const/4 v0, 0x2

    .line 199
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    const/4 v0, 0x3

    .line 200
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    .line 221
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMinVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMaxVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->access$100(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    .line 165
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->access$200(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    .line 166
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->access$300(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    .line 167
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->access$400(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;Lcom/google/android/exoplayer2/DeviceInfo$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 175
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 178
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/DeviceInfo;

    .line 179
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    .line 182
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    .line 188
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 190
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 191
    iget-object v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    if-eqz v1, :cond_0

    .line 206
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    if-eqz v1, :cond_1

    .line 209
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 211
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    if-eqz v1, :cond_2

    .line 212
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 215
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
