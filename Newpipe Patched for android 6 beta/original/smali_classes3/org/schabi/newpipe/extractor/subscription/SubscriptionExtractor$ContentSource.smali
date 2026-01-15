.class public final enum Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;
.super Ljava/lang/Enum;
.source "SubscriptionExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentSource"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

.field public static final enum CHANNEL_URL:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

.field public static final enum INPUT_STREAM:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    const-string v1, "CHANNEL_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->CHANNEL_URL:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    new-instance v1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    const-string v3, "INPUT_STREAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->INPUT_STREAM:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    const/4 v3, 0x2

    .line 39
    new-array v3, v3, [Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->$VALUES:[Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;
    .locals 1

    .line 39
    const-class v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;
    .locals 1

    .line 39
    sget-object v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->$VALUES:[Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    return-object v0
.end method
