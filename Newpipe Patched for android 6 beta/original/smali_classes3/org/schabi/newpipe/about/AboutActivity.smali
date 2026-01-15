.class public final Lorg/schabi/newpipe/about/AboutActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AboutActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/about/AboutActivity$AboutFragment;,
        Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;,
        Lorg/schabi/newpipe/about/AboutActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/about/AboutActivity$Companion;

.field private static final SOFTWARE_COMPONENTS:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$8U6HmmzgQgUDs6zs2Mb2FMMKVj4(Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/about/AboutActivity;->onCreate$lambda$0(Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 44

    new-instance v0, Lorg/schabi/newpipe/about/AboutActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/about/AboutActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/about/AboutActivity;->Companion:Lorg/schabi/newpipe/about/AboutActivity$Companion;

    .line 118
    new-instance v2, Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 120
    sget-object v8, Lorg/schabi/newpipe/about/StandardLicenses;->APACHE2:Lorg/schabi/newpipe/about/License;

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 118
    const-string v3, "ACRA"

    const-string v4, "2013"

    const-string v5, "Kevin Gaudin"

    const-string v6, "https://github.com/ACRA/acra"

    move-object v7, v8

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v7

    .line 122
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "AndroidX"

    const-string v5, "2005 - 2011"

    const-string v6, "The Android Open Source Project"

    const-string v7, "https://developer.android.com/jetpack"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v3

    .line 126
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "ExoPlayer"

    const-string v5, "2014 - 2020"

    const-string v6, "Google, Inc."

    const-string v7, "https://github.com/google/ExoPlayer"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v3

    .line 130
    new-instance v9, Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 132
    sget-object v14, Lorg/schabi/newpipe/about/StandardLicenses;->GPL3:Lorg/schabi/newpipe/about/License;

    const/16 v16, 0x20

    const/16 v17, 0x0

    .line 130
    const-string v10, "GigaGet"

    const-string v11, "2014 - 2015"

    const-string v12, "Peter Cai"

    const-string v13, "https://github.com/PaperAirplane-Dev-Team/GigaGet"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    .line 134
    new-instance v20, Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 136
    sget-object v26, Lorg/schabi/newpipe/about/StandardLicenses;->MIT:Lorg/schabi/newpipe/about/License;

    const/16 v27, 0x20

    const/16 v28, 0x0

    .line 134
    const-string v21, "Groupie"

    const-string v22, "2016"

    const-string v23, "Lisa Wray"

    const-string v24, "https://github.com/lisawray/groupie"

    move-object/from16 v25, v26

    const/16 v26, 0x0

    invoke-direct/range {v20 .. v28}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    new-instance v26, Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 140
    sget-object v31, Lorg/schabi/newpipe/about/StandardLicenses;->EPL1:Lorg/schabi/newpipe/about/License;

    const/16 v33, 0x20

    const/16 v34, 0x0

    .line 138
    const-string v27, "Android-State"

    const-string v28, "2018"

    const-string v29, "Evernote"

    const-string v30, "https://github.com/Evernote/android-state"

    const/16 v32, 0x0

    invoke-direct/range {v26 .. v34}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v30, v26

    .line 142
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "Bridge"

    const-string v5, "2021"

    const-string v6, "Livefront"

    const-string v7, "https://github.com/livefront/bridge"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v31, v3

    .line 146
    new-instance v21, Lorg/schabi/newpipe/about/SoftwareComponent;

    const/16 v28, 0x20

    const/16 v29, 0x0

    const-string v22, "Jsoup"

    const-string v23, "2009 - 2020"

    const-string v24, "Jonathan Hedley"

    move-object/from16 v26, v25

    const-string v25, "https://github.com/jhy/jsoup"

    const/16 v27, 0x0

    invoke-direct/range {v21 .. v29}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v32, v21

    move-object/from16 v25, v26

    .line 150
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "Markwon"

    const-string v5, "2019"

    const-string v6, "Dimitry Ivanov"

    const-string v7, "https://github.com/noties/Markwon"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v3

    .line 154
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "Material Components for Android"

    const-string v5, "2016 - 2020"

    const-string v6, "Google, Inc."

    const-string v7, "https://github.com/material-components/material-components-android"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v3

    .line 159
    new-instance v10, Lorg/schabi/newpipe/about/SoftwareComponent;

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v11, "NewPipe Extractor"

    const-string v12, "2017 - 2020"

    const-string v13, "Christian Schabesberger"

    move-object v15, v14

    const-string v14, "https://github.com/TeamNewPipe/NewPipeExtractor"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v18}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v10

    .line 163
    new-instance v35, Lorg/schabi/newpipe/about/SoftwareComponent;

    .line 165
    sget-object v40, Lorg/schabi/newpipe/about/StandardLicenses;->MPL2:Lorg/schabi/newpipe/about/License;

    const/16 v42, 0x20

    const/16 v43, 0x0

    .line 163
    const-string v36, "NoNonsense-FilePicker"

    const-string v37, "2016"

    const-string v38, "Jonas Kalderstam"

    const-string v39, "https://github.com/spacecowboy/NoNonsense-FilePicker"

    const/16 v41, 0x0

    invoke-direct/range {v35 .. v43}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "OkHttp"

    const-string v5, "2019"

    const-string v6, "Square, Inc."

    const-string v7, "https://square.github.io/okhttp/"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v13, v3

    .line 171
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "Picasso"

    const-string v5, "2013"

    const-string v6, "Square, Inc."

    const-string v7, "https://square.github.io/picasso/"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v14, v3

    .line 175
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "PrettyTime"

    const-string v5, "2012 - 2020"

    const-string v6, "Lincoln Baxter, III"

    const-string v7, "https://github.com/ocpsoft/prettytime"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v3

    .line 179
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "ProcessPhoenix"

    const-string v5, "2015"

    const-string v6, "Jake Wharton"

    const-string v7, "https://github.com/JakeWharton/ProcessPhoenix"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v16, v3

    .line 183
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "RxAndroid"

    const-string v5, "2015"

    const-string v6, "The RxAndroid authors"

    const-string v7, "https://github.com/ReactiveX/RxAndroid"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v3

    .line 187
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "RxBinding"

    const-string v5, "2015"

    const-string v6, "Jake Wharton"

    const-string v7, "https://github.com/JakeWharton/RxBinding"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v3

    .line 191
    new-instance v3, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v4, "RxJava"

    const-string v5, "2016 - 2020"

    const-string v6, "RxJava Contributors"

    const-string v7, "https://github.com/ReactiveX/RxJava"

    invoke-direct/range {v3 .. v11}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 195
    new-instance v21, Lorg/schabi/newpipe/about/SoftwareComponent;

    const-string v22, "SearchPreference"

    const-string v23, "2018"

    const-string v24, "ByteHamster"

    const-string v25, "https://github.com/ByteHamster/SearchPreference"

    invoke-direct/range {v21 .. v29}, Lorg/schabi/newpipe/about/SoftwareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/about/License;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v4, 0x14

    new-array v4, v4, [Lorg/schabi/newpipe/about/SoftwareComponent;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v19, v4, v0

    const/4 v0, 0x4

    aput-object v20, v4, v0

    const/4 v0, 0x5

    aput-object v30, v4, v0

    const/4 v0, 0x6

    aput-object v31, v4, v0

    const/4 v0, 0x7

    aput-object v32, v4, v0

    const/16 v0, 0x8

    aput-object v33, v4, v0

    const/16 v0, 0x9

    aput-object v34, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v35, v4, v0

    const/16 v0, 0xc

    aput-object v13, v4, v0

    const/16 v0, 0xd

    aput-object v14, v4, v0

    const/16 v0, 0xe

    aput-object v15, v4, v0

    const/16 v0, 0xf

    aput-object v16, v4, v0

    const/16 v0, 0x10

    aput-object v17, v4, v0

    const/16 v0, 0x11

    aput-object v18, v4, v0

    const/16 v0, 0x12

    aput-object v3, v4, v0

    const/16 v0, 0x13

    aput-object v21, v4, v0

    .line 117
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/about/AboutActivity;->SOFTWARE_COMPONENTS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSOFTWARE_COMPONENTS$cp()Ljava/util/ArrayList;
    .locals 1

    .line 22
    sget-object v0, Lorg/schabi/newpipe/about/AboutActivity;->SOFTWARE_COMPONENTS:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static final onCreate$lambda$0(Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;->getPageTitle(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->setTheme(Landroid/content/Context;)V

    const p1, 0x7f12048b

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/databinding/ActivityAboutBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ActivityAboutBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/ActivityAboutBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 31
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ActivityAboutBinding;->aboutToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 38
    iget-object v1, p1, Lorg/schabi/newpipe/databinding/ActivityAboutBinding;->aboutViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 40
    iget-object v2, p1, Lorg/schabi/newpipe/databinding/ActivityAboutBinding;->aboutTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 41
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityAboutBinding;->aboutViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 44
    new-instance v3, Lorg/schabi/newpipe/about/AboutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/schabi/newpipe/about/AboutActivity$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/about/AboutActivity$AboutStateAdapter;)V

    .line 39
    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 44
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
