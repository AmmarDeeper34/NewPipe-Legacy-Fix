.class public final Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;
.super Ljava/lang/Object;
.source "PoTokenProviderImpl.kt"

# interfaces
.implements Lorg/schabi/newpipe/extractor/services/youtube/PoTokenProvider;


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;

.field private static final TAG:Ljava/lang/String;

.field private static final webViewSupported$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$PR2CUEgfTwH9dHipnSYZ5ywcmv8()Z
    .locals 1

    .line 0
    invoke-static {}, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;->webViewSupported_delegate$lambda$0()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;->INSTANCE:Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;

    .line 16
    const-class v0, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;->webViewSupported$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final webViewSupported_delegate$lambda$0()Z
    .locals 1

    .line 17
    invoke-static {}, Lorg/schabi/newpipe/util/DeviceUtils;->supportsWebView()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAndroidClientPoToken(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;
    .locals 1

    .line 0
    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIosClientPoToken(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;
    .locals 1

    .line 0
    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWebEmbedClientPoToken(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/PoTokenResult;
    .locals 1

    .line 0
    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
