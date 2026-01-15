.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;
.super Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;
.source "FeedGroupDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconPickerScreen"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    const v0, 0x5912232d

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "IconPickerScreen"

    return-object v0
.end method
