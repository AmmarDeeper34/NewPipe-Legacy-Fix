.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;
.super Ljava/lang/Object;
.source "FeedGroupDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;JILjava/lang/Object;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, -0x1

    .line 516
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;
    .locals 2

    .line 517
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;-><init>()V

    .line 518
    const-string v1, "KEY_GROUP_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lkotlin/Pair;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {p2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
