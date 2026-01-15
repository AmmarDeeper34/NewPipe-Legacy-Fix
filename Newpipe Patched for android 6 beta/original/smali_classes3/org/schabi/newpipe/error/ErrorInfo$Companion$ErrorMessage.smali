.class public final Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;
.super Ljava/lang/Object;
.source "ErrorInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/error/ErrorInfo$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorMessage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final formatArgs:[Ljava/lang/String;

.field private final stringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage$Creator;

    invoke-direct {v0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage$Creator;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1

    const-string v0, "formatArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->stringRes:I

    .line 147
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->formatArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->formatArgs:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 152
    iget v0, p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->stringRes:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 156
    :cond_0
    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getContextForLanguage(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->stringRes:I

    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->formatArgs:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 0
    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->stringRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->formatArgs:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
