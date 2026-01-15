.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;
.super Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent;
.source "FeedGroupReorderDialogViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuccessEvent"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
