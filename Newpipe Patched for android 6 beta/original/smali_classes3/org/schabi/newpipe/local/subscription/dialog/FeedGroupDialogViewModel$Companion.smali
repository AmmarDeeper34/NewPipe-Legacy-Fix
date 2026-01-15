.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;
.super Ljava/lang/Object;
.source "FeedGroupDialogViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$i-G0NmBNxUNGjSNALIIGgqyhbCw(Landroid/content/Context;JLjava/lang/String;ZLandroidx/lifecycle/viewmodel/CreationExtras;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;->getFactory$lambda$0$0(Landroid/content/Context;JLjava/lang/String;ZLandroidx/lifecycle/viewmodel/CreationExtras;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;-><init>()V

    return-void
.end method

.method private static final getFactory$lambda$0$0(Landroid/content/Context;JLjava/lang/String;ZLandroidx/lifecycle/viewmodel/CreationExtras;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;
    .locals 2

    const-string v0, "$this$initializer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p5, p0

    .line 127
    new-instance p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 128
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    const-string v0, "getApplicationContext(...)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, p4

    move-object p4, p3

    move-wide p2, p1

    move-object p1, p5

    move p5, v1

    .line 127
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;-><init>(Landroid/content/Context;JLjava/lang/String;Z)V

    return-object p0
.end method


# virtual methods
.method public final getFactory(Landroid/content/Context;JLjava/lang/String;Z)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialQuery"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    .line 126
    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 69
    const-class p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 32
    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p1

    return-object p1
.end method
