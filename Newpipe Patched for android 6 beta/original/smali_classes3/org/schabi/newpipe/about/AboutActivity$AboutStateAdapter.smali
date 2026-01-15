.class final Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "AboutActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/about/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AboutStateAdapter"
.end annotation


# instance fields
.field private final posAbout:I

.field private final posLicense:I

.field private final totalCount:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "fa"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 p1, 0x1

    .line 88
    iput p1, p0, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;->posLicense:I

    const/4 p1, 0x2

    .line 89
    iput p1, p0, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;->totalCount:I

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 93
    iget v0, p0, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;->posAbout:I

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;-><init>()V

    return-object p1

    .line 94
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;->posLicense:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/schabi/newpipe/about/LicenseFragment;->Companion:Lorg/schabi/newpipe/about/LicenseFragment$Companion;

    invoke-static {}, Lorg/schabi/newpipe/about/AboutActivity;->access$getSOFTWARE_COMPONENTS$cp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/about/LicenseFragment$Companion;->newInstance(Ljava/util/ArrayList;)Lorg/schabi/newpipe/about/LicenseFragment;

    move-result-object p1

    return-object p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown position for ViewPager2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemCount()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;->totalCount:I

    return v0
.end method

.method public final getPageTitle(I)I
    .locals 1

    .line 106
    iget v0, p0, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;->posAbout:I

    if-ne p1, v0, :cond_0

    const p1, 0x7f12047d

    return p1

    .line 107
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;->posLicense:I

    if-ne p1, v0, :cond_1

    const p1, 0x7f120481

    return p1

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown position for ViewPager2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
