.class public final Lokhttp3/internal/http/CallServerInterceptor$intercept$1;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lokhttp3/TrailersSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http/CallServerInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $exchange:Lokhttp3/internal/connection/Exchange;

.field final synthetic $responseBody:Lokhttp3/ResponseBody;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/Exchange;Lokhttp3/ResponseBody;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    iput-object p2, p0, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;->$responseBody:Lokhttp3/ResponseBody;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
