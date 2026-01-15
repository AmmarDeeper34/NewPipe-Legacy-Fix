.class final Landroidx/work/impl/utils/NetworkRequest31;
.super Ljava/lang/Object;
.source "NetworkRequestCompat.kt"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/utils/NetworkRequest31;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/work/impl/utils/NetworkRequest31;

    invoke-direct {v0}, Landroidx/work/impl/utils/NetworkRequest31;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/NetworkRequest31;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest31;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final capabilities(Landroid/net/NetworkRequest;)[I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object p1

    const-string v0, "request.capabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final transportTypes(Landroid/net/NetworkRequest;)[I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object p1

    const-string v0, "request.transportTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
