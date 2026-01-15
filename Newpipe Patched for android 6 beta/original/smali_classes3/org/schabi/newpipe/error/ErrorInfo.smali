.class public final Lorg/schabi/newpipe/error/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/error/ErrorInfo$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/schabi/newpipe/error/ErrorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;


# instance fields
.field private final isReportable:Z

.field private final isRetryable:Z

.field private final message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

.field private final openInBrowserUrl:Ljava/lang/String;

.field private final recaptchaUrl:Ljava/lang/String;

.field private final request:Ljava/lang/String;

.field private final serviceId:Ljava/lang/Integer;

.field private final stackTraces:[Ljava/lang/String;

.field private final userAction:Lorg/schabi/newpipe/error/UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo$Creator;

    invoke-direct {v0}, Lorg/schabi/newpipe/error/ErrorInfo$Creator;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V
    .locals 9

    .line 0
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    .line 0
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 10

    const-string v1, "throwable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userAction"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "request"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->throwableToStringList(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v1, p1, p2, p4}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    move-result-object v6

    move-object v5, v6

    .line 78
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->isReportable(Ljava/lang/Throwable;)Z

    move-result v6

    .line 79
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->isRetryable(Ljava/lang/Throwable;)Z

    move-result v7

    .line 80
    instance-of v1, p1, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    goto :goto_0

    :cond_0
    move-object v0, v8

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->getUrl()Ljava/lang/String;

    move-result-object v8

    :cond_1
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v9, p5

    move-object v1, v4

    move-object v4, p4

    .line 72
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move-object p6, v0

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_1
    move-object p6, p5

    goto :goto_0

    .line 66
    :goto_1
    invoke-direct/range {p1 .. p6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 123
    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 11

    const-string v0, "throwables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->throwableListToStringList(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p2, p4}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    move-result-object v6

    .line 1761
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1762
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 97
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->isReportable(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v7, 0x1

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 1761
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1762
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 98
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->isRetryable(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v8, 0x1

    .line 99
    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v3, v0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    if-eqz v3, :cond_8

    check-cast v0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    goto :goto_4

    :cond_8
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_9
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_a
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v10, p5

    move-object v9, v1

    move-object v1, p0

    .line 91
    invoke-direct/range {v1 .. v10}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move-object p6, v0

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_1
    move-object p6, p5

    goto :goto_0

    .line 85
    :goto_1
    invoke-direct/range {p1 .. p6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 8

    const-string v0, "throwables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 132
    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 11

    const-string v0, "stackTraces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v6, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    move/from16 v1, p5

    invoke-direct {v6, v1, v0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>(I[Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 111
    invoke-direct/range {v1 .. v10}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->userAction:Lorg/schabi/newpipe/error/UserAction;

    .line 41
    iput-object p3, p0, Lorg/schabi/newpipe/error/ErrorInfo;->request:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    .line 43
    iput-object p5, p0, Lorg/schabi/newpipe/error/ErrorInfo;->message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 48
    iput-boolean p6, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable:Z

    .line 52
    iput-boolean p7, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isRetryable:Z

    .line 57
    iput-object p8, p0, Lorg/schabi/newpipe/error/ErrorInfo;->recaptchaUrl:Ljava/lang/String;

    .line 62
    iput-object p9, p0, Lorg/schabi/newpipe/error/ErrorInfo;->openInBrowserUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getOpenInBrowserUrl()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->openInBrowserUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecaptchaUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->recaptchaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequest()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->request:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 2

    .line 135
    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->access$getServiceName(Lorg/schabi/newpipe/error/ErrorInfo$Companion;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStackTraces()[Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAction()Lorg/schabi/newpipe/error/UserAction;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->userAction:Lorg/schabi/newpipe/error/UserAction;

    return-object v0
.end method

.method public final isReportable()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable:Z

    return v0
.end method

.method public final isRetryable()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isRetryable:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 0
    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->userAction:Lorg/schabi/newpipe/error/UserAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->request:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo;->message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->isRetryable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->recaptchaUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/schabi/newpipe/error/ErrorInfo;->openInBrowserUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
