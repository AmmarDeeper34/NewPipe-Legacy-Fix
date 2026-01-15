.class public final Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;
.super Ljava/lang/Object;
.source "PackageValidator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;
    }
.end annotation


# instance fields
.field private final callerChecked:Ljava/util/Map;

.field private final context:Landroid/content/Context;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final platformSignature:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$rNw1MIrdh3nk2S9G8sPPZH_EIww(B)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->getSignatureSha256$lambda$0(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y0sNyVzFol93mng7MQKMqEh7Wwc(Lkotlin/Pair;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->buildCallerInfo$lambda$0(Lkotlin/Pair;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "getPackageManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->packageManager:Landroid/content/pm/PackageManager;

    .line 52
    invoke-direct {p0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->getSystemSignature()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->platformSignature:Ljava/lang/String;

    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->callerChecked:Ljava/util/Map;

    return-void
.end method

.method private final buildCallerInfo(Ljava/lang/String;)Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;
    .locals 9

    .line 148
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 150
    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 151
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move v6, v2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    const/4 v6, -0x1

    .line 152
    :goto_1
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->getSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v7

    .line 154
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 155
    :cond_4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asSequence([I)Lkotlin/sequences/Sequence;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 156
    :cond_6
    invoke-static {v2, v1}, Lkotlin/sequences/SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$$ExternalSyntheticLambda1;-><init>()V

    .line 157
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1163
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1164
    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 160
    :cond_7
    new-instance v3, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    return-object v3
.end method

.method private static final buildCallerInfo$lambda$0(Lkotlin/Pair;)Z
    .locals 1

    .line 0
    const-string v0, "<destruct>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1040

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method private final getSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2

    .line 189
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 195
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->getSignatureSha256([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getSignatureSha256([B)Ljava/lang/String;
    .locals 11

    .line 212
    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 223
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string p1, "digest(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$$ExternalSyntheticLambda0;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const-string v3, ":"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find SHA256 hash algorithm"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final getSignatureSha256$lambda$0(B)Ljava/lang/CharSequence;
    .locals 3

    .line 223
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getSystemSignature()Ljava/lang/String;
    .locals 2

    .line 202
    const-string v0, "android"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->getSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Platform signature not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final logUnknownCaller(Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;)V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public final isKnownCaller(Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "callingPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->callerChecked:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v2, p2, :cond_1

    return v0

    .line 84
    :cond_1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->buildCallerInfo(Ljava/lang/String;)Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 88
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->getUid()I

    move-result v2

    if-ne v2, p2, :cond_8

    .line 92
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x1

    if-ne p2, v3, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    iget-object v3, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->platformSignature:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->getPermissions()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 116
    :cond_5
    iget-object v2, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 117
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v1, :cond_7

    .line 124
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->logUnknownCaller(Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;)V

    .line 128
    :cond_7
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator;->callerChecked:Ljava/util/Map;

    new-instance v2, Lkotlin/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 89
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Caller\'s package UID doesn\'t match caller\'s actual UID?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Caller wasn\'t found in the system?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
