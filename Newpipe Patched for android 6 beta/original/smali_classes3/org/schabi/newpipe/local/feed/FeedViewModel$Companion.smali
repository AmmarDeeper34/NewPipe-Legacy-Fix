.class public final Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;
.super Ljava/lang/Object;
.source "FeedViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/FeedViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$l8kO5qZy4ZvWsOGOoV1L_qEiig4(JLandroid/content/Context;Landroidx/lifecycle/viewmodel/CreationExtras;)Lorg/schabi/newpipe/local/feed/FeedViewModel;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->getFactory$lambda$0$0(JLandroid/content/Context;Landroidx/lifecycle/viewmodel/CreationExtras;)Lorg/schabi/newpipe/local/feed/FeedViewModel;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getShowFutureItemsFromPreferences(Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;Landroid/content/Context;)Z
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->getShowFutureItemsFromPreferences(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getShowPartiallyPlayedItemsFromPreferences(Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;Landroid/content/Context;)Z
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->getShowPartiallyPlayedItemsFromPreferences(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getShowPlayedItemsFromPreferences(Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;Landroid/content/Context;)Z
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->getShowPlayedItemsFromPreferences(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static final getFactory$lambda$0$0(JLandroid/content/Context;Landroidx/lifecycle/viewmodel/CreationExtras;)Lorg/schabi/newpipe/local/feed/FeedViewModel;
    .locals 8

    const-string v0, "$this$initializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 168
    invoke-static {}, Lorg/schabi/newpipe/App;->getApp()Lorg/schabi/newpipe/App;

    move-result-object v2

    const-string p3, "getApp(...)"

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object p3, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getApplicationContext(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->getShowPlayedItemsFromPreferences(Landroid/content/Context;)Z

    move-result v5

    .line 172
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->getShowPartiallyPlayedItemsFromPreferences(Landroid/content/Context;)Z

    move-result v6

    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p2}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;->getShowFutureItemsFromPreferences(Landroid/content/Context;)Z

    move-result v7

    move-wide v3, p0

    .line 167
    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/local/feed/FeedViewModel;-><init>(Landroid/app/Application;JZZZ)V

    return-object v1
.end method

.method private final getShowFutureItemsFromPreferences(Landroid/content/Context;)Z
    .locals 2

    .line 162
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1201c4

    .line 163
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final getShowPartiallyPlayedItemsFromPreferences(Landroid/content/Context;)Z
    .locals 2

    .line 158
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1201c7

    .line 159
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final getShowPlayedItemsFromPreferences(Landroid/content/Context;)Z
    .locals 2

    .line 154
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1201ca

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getFactory(Landroid/content/Context;J)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    .line 166
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion$$ExternalSyntheticLambda0;-><init>(JLandroid/content/Context;)V

    .line 69
    const-class p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 32
    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p1

    return-object p1
.end method
