.class final Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "PreferenceSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreferenceCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    check-cast p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceCallback;->areContentsTheSame(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)Z
    .locals 0

    .line 83
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getAllRelevantSearchFields()Ljava/util/List;

    move-result-object p1

    .line 84
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getAllRelevantSearchFields()Ljava/util/List;

    move-result-object p2

    .line 83
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    check-cast p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceCallback;->areItemsTheSame(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)Z
    .locals 0

    .line 77
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
