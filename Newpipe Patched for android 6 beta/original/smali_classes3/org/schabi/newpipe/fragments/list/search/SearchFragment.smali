.class public Lorg/schabi/newpipe/fragments/list/search/SearchFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListFragment;
.source "SearchFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/fragments/BackPressable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListFragment<",
        "Lorg/schabi/newpipe/extractor/search/SearchInfo;",
        "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;",
        ">;",
        "Lorg/schabi/newpipe/fragments/BackPressable;"
    }
.end annotation


# instance fields
.field contentFilter:[Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field filterItemCheckedId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private historyRecordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

.field isCorrectedSearch:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field lastSearchedString:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private final menuItemToFilterName:Landroidx/collection/SparseArrayCompat;

.field metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private nextPage:Lorg/schabi/newpipe/extractor/Page;

.field private searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

.field private searchClear:Landroid/view/View;

.field private searchDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private searchEditText:Landroid/widget/EditText;

.field searchString:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field searchSuggestion:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private searchToolbarContainer:Landroid/view/View;

.field private service:Lorg/schabi/newpipe/extractor/StreamingService;

.field protected serviceId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private showLocalSuggestions:Z

.field private showRemoteSuggestions:Z

.field sortFilter:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private suggestionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

.field private final suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field private suggestionsPanelVisible:Z

.field private textWatcher:Landroid/text/TextWatcher;

.field wasSearchFocused:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-D5gL6hX0Mo6q1vU6pdkn6B4CkA(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 781
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda25;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 783
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static synthetic $r8$lambda$-MGjqFJYpeLXVNBB_t7EOX6_so8(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$initSearchListeners$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-rP-v09F-SuStkLB4oogogco_1w(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$handleSearchSuggestion$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0TI4ncqma0q-Z7VYCskMNSm5LWs(Ljava/lang/Long;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$3IbTq3GaHSiQN0xEIXq4q9ynQN8(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$handleSuggestions$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$5bPcYjYddMP8THw42XXSEi6833E(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$search$20(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8b0d-0Vce1kkdZw2hqTHb0myQsM(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$showDeleteSuggestionDialog$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9tir0NQyG6jX_lkyH1J1AaOPQjU(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)Z
    .locals 0

    .line 782
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IvV8OOuJDOOO2yWqjzVKyJWwFKo(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$showDeleteSuggestionDialog$6(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K6d49EjvZRxwcCXlX2QLVYSEGdk(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$search$17(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Me0QOnKm1fsKHsM_ism8ggR6R_A(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$onSuggestionItemSwiped$27(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QdLTUTbH5IriJJR7KtyPwk8CNKs(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$search$16(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T6mv_PjapBDNec_rHz_4Q_u2QBY(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/extractor/search/SearchInfo;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$startLoading$21(Lorg/schabi/newpipe/extractor/search/SearchInfo;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WZJYC8kh91_WmnKSEeomxsbkBJs(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$initSearchListeners$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XMSJtsRDaBKf3A4FAzJSDCmqgtU(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$handleSearchSuggestion$25(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XwsBJhBlKtOkVffdJ2pD46RuqwM(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$onSuggestionItemSwiped$26(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbYkxPNhSLxj9mYS5sNHWDph5P4(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lio/reactivex/rxjava3/core/Notification;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$initSuggestionObserver$14(Lio/reactivex/rxjava3/core/Notification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZcXKW781TTB1zuSiwEKiTr8kvX0(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 753
    new-instance v2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic $r8$lambda$ZpbVHVknyUT-SvVGQZal0m4rGEk(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$initSuggestionObserver$15(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_nKY-_qzNUEIiNoFyBa7FXIRdwc(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->onItemError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bh4SDfOqzvgCo_zN7W77ZlOY99E(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$initSearchListeners$2(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPF6Wt96fm5VYmw_Ud2ju69eers(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$showDeleteSuggestionDialog$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$db4fElYB_m1lMxbzJMRmVJWdzp4(Ljava/util/List;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)Z
    .locals 1

    .line 781
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda30;-><init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fV5EuMdignPQTRBKKcnJYzRZ5aQ(Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;
    .locals 2

    .line 742
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$h0l-3q4TuuF2uzADhXMCMasINV4(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$search$18(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mmPjPW93nDks_6G8XnBg7Up1Kms(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 741
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda31;-><init>()V

    .line 742
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 743
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic $r8$lambda$wJiAk0s8OgPf0h6c5TNy0rgioqQ(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$initSearchListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x0zQ9poAsmo6yjYChbAEUyvWqjw(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$initSuggestionObserver$13(Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yeE1rEIG_t_AczELZjEOHZAQZMw(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lambda$loadMoreItems$22(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetsearchEditText(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsuggestionPublisher(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSearchEditString(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msearch(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDeleteSuggestionDialog(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showDeleteSuggestionDialog(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;-><init>()V

    .line 108
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    .line 113
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    const/4 v0, 0x0

    .line 124
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 143
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 146
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->menuItemToFilterName:Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x1

    .line 150
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    .line 151
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    .line 155
    new-instance v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 170
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    return-void
.end method

.method private changeContentFilter(Landroid/view/MenuItem;Ljava/util/List;)V
    .locals 5

    .line 961
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    const/4 v0, 0x1

    .line 962
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 964
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 965
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "all"

    .line 966
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 973
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 974
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p1, v4, v0

    const p1, 0x7f1203d9

    .line 972
    invoke-virtual {p0, p1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 968
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 970
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const v1, 0x7f1203d8

    .line 969
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 968
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 978
    :cond_2
    :goto_1
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 980
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 981
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/search/SearchFragment;
    .locals 3

    .line 181
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;-><init>()V

    const/4 v1, 0x0

    .line 182
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->setQuery(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 185
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->setSearchOnResume()V

    :cond_0
    return-object v0
.end method

.method private getLocalSuggestionsObservable(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 2

    .line 737
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    const/16 v1, 0x19

    .line 738
    invoke-virtual {v0, p1, p2, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->getRelatedSearches(Ljava/lang/String;II)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    .line 739
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->toObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda24;

    invoke-direct {p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda24;-><init>()V

    .line 740
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getOpenInBrowserUrlForErrors()Ljava/lang/String;
    .locals 5

    .line 945
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 949
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 950
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 949
    invoke-virtual {v0, v2, v3, v4}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;->getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private getRemoteSuggestionsObservable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1

    .line 747
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 748
    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->suggestionsFor(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 749
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Single;->toObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda26;-><init>()V

    .line 750
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getSearchEditString()Ljava/lang/String;
    .locals 1

    .line 996
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleSearchSuggestion()V
    .locals 4

    .line 1073
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1076
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isCorrectedSearch:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1203d7

    goto :goto_0

    :cond_1
    const v0, 0x7f1200f6

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b><i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 1081
    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</i></b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1082
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {v0, v3}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda17;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1099
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideKeyboardSearch()V
    .locals 2

    .line 690
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "hideKeyboardSearch() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    return-void
.end method

.method private hideSuggestionsPanel()V
    .locals 5

    .line 674
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "hideSuggestionsPanel() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 677
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 678
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->suggestionsPanel:Landroid/widget/LinearLayout;

    const-wide/16 v2, 0xc8

    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {v1, v0, v2, v3, v4}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    return-void
.end method

.method private initSearchListeners()V
    .locals 2

    .line 532
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "initSearchListeners() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    const v1, 0x7f120094

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 576
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$2;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->setListener(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;)V

    .line 597
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 598
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 600
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$3;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->textWatcher:Landroid/text/TextWatcher;

    .line 624
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 625
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 643
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 644
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->initSuggestionObserver()V

    return-void
.end method

.method private initSuggestionObserver()V
    .locals 4

    .line 760
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "initSuggestionObserver() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 764
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 767
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    const-wide/16 v1, 0x78

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 768
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 769
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda18;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 770
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->switchMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 799
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 800
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    new-instance v2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda20;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 801
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private isSearchEditBlank()Z
    .locals 1

    .line 1000
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$handleSearchSuggestion$24(Landroid/view/View;)V
    .locals 2

    .line 1087
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$handleSearchSuggestion$25(Landroid/view/View;)Z
    .locals 1

    .line 1093
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1095
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showKeyboardSearch()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$handleSuggestions$23()V
    .locals 2

    .line 1012
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$initSearchListeners$0(Landroid/view/View;)V
    .locals 3

    .line 536
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() called with: v = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isSearchEditBlank()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 540
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->gotoMainFragment(Landroidx/fragment/app/FragmentManager;)V

    return-void

    .line 544
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->correctSuggestion:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 548
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showKeyboardSearch()V

    return-void
.end method

.method private synthetic lambda$initSearchListeners$1(Landroid/view/View;)V
    .locals 3

    .line 554
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() called with: v = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isErrorPanelVisible()Z

    move-result p1

    if-nez p1, :cond_2

    .line 558
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showSuggestionsPanel()V

    .line 560
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 561
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showKeyboardSearch()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$initSearchListeners$2(Landroid/view/View;Z)V
    .locals 3

    .line 566
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange() called with: v = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], hasFocus = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    .line 571
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isErrorPanelVisible()Z

    move-result p1

    if-nez p1, :cond_2

    .line 572
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showSuggestionsPanel()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initSearchListeners$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 627
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction() called with: v = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], actionId = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], event = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x7

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    .line 632
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 634
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-eq p1, p2, :cond_2

    .line 635
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 636
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/String;

    const-string p3, ""

    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private synthetic lambda$initSuggestionObserver$13(Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2

    .line 773
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 776
    :goto_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    .line 778
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getLocalSuggestionsObservable(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 779
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getRemoteSuggestionsObservable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda22;-><init>()V

    .line 777
    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 786
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->materialize()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    const/16 v0, 0x19

    .line 788
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getLocalSuggestionsObservable(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 789
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->materialize()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    .line 791
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getRemoteSuggestionsObservable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 792
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->materialize()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    .line 794
    :cond_3
    new-instance p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda23;

    invoke-direct {p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 795
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Single;->toObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 796
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->materialize()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$initSuggestionObserver$14(Lio/reactivex/rxjava3/core/Notification;)V
    .locals 4

    .line 803
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->handleSuggestions(Ljava/util/List;)V

    return-void

    .line 807
    :cond_0
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getError()Ljava/lang/Throwable;

    move-result-object v0

    .line 809
    invoke-static {v0}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->isInterruptedCaused(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getError()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->GET_SUGGESTIONS:Lorg/schabi/newpipe/error/UserAction;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 812
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initSuggestionObserver$15(Ljava/lang/Throwable;)V
    .locals 4

    .line 814
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->GET_SUGGESTIONS:Lorg/schabi/newpipe/error/UserAction;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 815
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 814
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$loadMoreItems$22(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;Ljava/lang/Throwable;)V
    .locals 0

    .line 918
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private synthetic lambda$onSuggestionItemSwiped$26(Ljava/lang/Integer;)V
    .locals 1

    .line 1158
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 1159
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onSuggestionItemSwiped$27(Ljava/lang/Throwable;)V
    .locals 3

    .line 1160
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Deleting item failed"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$search$16(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 845
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->getIntentByLink(Landroid/content/Context;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$search$17(Landroid/content/Intent;)V
    .locals 1

    .line 850
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 851
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$search$18(Ljava/lang/Throwable;)V
    .locals 0

    const p1, 0x7f1204a7

    .line 852
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showTextError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$search$20(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 873
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    iget v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 874
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p2, v1, p1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$showDeleteSuggestionDialog$4(Ljava/lang/Integer;)V
    .locals 1

    .line 711
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 712
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showDeleteSuggestionDialog$5(Ljava/lang/Throwable;)V
    .locals 3

    .line 713
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Deleting item failed"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private synthetic lambda$showDeleteSuggestionDialog$6(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 708
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->deleteSearchHistory(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 709
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda28;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    new-instance p3, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda29;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda29;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 710
    invoke-virtual {p1, p2, p3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 716
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private synthetic lambda$startLoading$21(Lorg/schabi/newpipe/extractor/search/SearchInfo;Ljava/lang/Throwable;)V
    .locals 0

    .line 895
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private onItemError(Ljava/lang/Throwable;)V
    .locals 6

    .line 934
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;

    if-eqz v0, :cond_0

    .line 935
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 936
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showEmptyState()V

    return-void

    .line 938
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 939
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getOpenInBrowserUrlForErrors()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private restoreFilterChecked(Landroid/view/Menu;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 492
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 497
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method private search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 832
    sget-boolean p2, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 833
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "search() called with: query = ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 842
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p2

    .line 843
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showLoading()V

    .line 844
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)V

    .line 845
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 847
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 848
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 849
    invoke-virtual {p2, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 844
    invoke-virtual {p3, p2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 859
    :catch_0
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    .line 860
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 861
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 862
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideSuggestionsPanel()V

    .line 863
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object p3, p2, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->searchMetaInfoTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->searchMetaInfoSeparator:Landroid/view/View;

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v1, 0x0

    invoke-static {v1, p3, p2, v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 865
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 868
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object p3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    invoke-virtual {p3, v0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->onSearched(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p3

    .line 869
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p3

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda14;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p3, v0, v1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    .line 868
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 878
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 879
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->startLoading(Z)V

    return-void
.end method

.method private setQuery(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 989
    iput p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 990
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 991
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 992
    iput-object p4, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    return-void
.end method

.method private setSearchOnResume()V
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private showDeleteSuggestionDialog(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 3

    .line 698
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    if-nez v1, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 702
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 703
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1200e5

    .line 704
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 705
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120070

    const/4 v2, 0x0

    .line 706
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda27;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;)V

    const p1, 0x7f1200e0

    .line 707
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 718
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private showKeyboardSearch()V
    .locals 2

    .line 683
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "showKeyboardSearch() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/KeyboardUtil;->showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    return-void
.end method

.method private showSearchOnStart()V
    .locals 5

    .line 506
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSearchOnStart() called, searchQuery \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lastSearchedQuery \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 515
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isSearchEditBlank()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 526
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 527
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 516
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 517
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 518
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 520
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 522
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 523
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showSuggestionsPanel()V
    .locals 5

    .line 665
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "showSuggestionsPanel() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 668
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 669
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->suggestionsPanel:Landroid/widget/LinearLayout;

    const-wide/16 v2, 0xc8

    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {v1, v0, v2, v3, v4}, Lorg/schabi/newpipe/ktx/ViewUtils;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;)V

    return-void
.end method

.method private unsetSearchListeners()V
    .locals 3

    .line 649
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "unsetSearchListeners() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 654
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 656
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 658
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 659
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 661
    :cond_1
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private updateService()V
    .locals 3

    .line 239
    :try_start_0
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting service for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected doInitialLoadLogic()V
    .locals 0

    .line 0
    return-void
.end method

.method public getSuggestionMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 1142
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1147
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 1148
    iget-boolean p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    if-eqz p1, :cond_1

    const/16 p1, 0xc

    invoke-static {v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public handleError()V
    .locals 0

    .line 1132
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->handleError()V

    .line 1133
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideSuggestionsPanel()V

    .line 1134
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    return-void
.end method

.method public handleNextItems(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V
    .locals 9

    const/4 v0, 0x0

    .line 1105
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 1106
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->addInfoItemList(Ljava/util/List;)V

    .line 1108
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    const-string v1, "\""

    if-nez v0, :cond_0

    .line 1112
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" \u2192 nextPage == null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 1113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1114
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getOpenInBrowserUrlForErrors()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    goto :goto_0

    .line 1116
    :cond_0
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" \u2192 pageUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 1117
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 1118
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageCookies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 1119
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Page;->getCookies()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 1120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getOpenInBrowserUrlForErrors()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 1126
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 1127
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->handleNextItems(Ljava/lang/Object;)V

    return-void
.end method

.method public handleResult(Lorg/schabi/newpipe/extractor/search/SearchInfo;)V
    .locals 9

    .line 1035
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v0

    .line 1036
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1037
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1038
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;

    if-nez v0, :cond_1

    .line 1039
    :cond_0
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    iget-object v6, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 1040
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getOpenInBrowserUrlForErrors()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 1043
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getSearchSuggestion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1045
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 1047
    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch()Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isCorrectedSearch:Z

    .line 1050
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getMetaInfo()Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Lorg/schabi/newpipe/extractor/MetaInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/MetaInfo;

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 1051
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getMetaInfo()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v2, v1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->searchMetaInfoTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->searchMetaInfoSeparator:Landroid/view/View;

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {v0, v2, v1, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 1054
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->handleSearchSuggestion()V

    .line 1056
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    .line 1057
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 1059
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1060
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1061
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->addInfoItemList(Ljava/util/List;)V

    goto :goto_0

    .line 1063
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 1064
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showEmptyState()V

    return-void

    .line 1069
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleResult(Ljava/lang/Object;)V

    return-void
.end method

.method public handleSuggestions(Ljava/util/List;)V
    .locals 3

    .line 1008
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSuggestions() called with: suggestions = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 1014
    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isErrorPanelVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1015
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideLoading()V

    :cond_1
    return-void
.end method

.method protected hasMoreItems()Z
    .locals 1

    .line 924
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    move-result v0

    return v0
.end method

.method public hideLoading()V
    .locals 1

    .line 1025
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->hideLoading()V

    const/4 v0, 0x0

    .line 1026
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 356
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 358
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 360
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 361
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$1;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 379
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 381
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const p2, 0x7f0a03f6

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    const p2, 0x7f0a03f7

    .line 382
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 383
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    const p2, 0x7f0a03f4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    return-void
.end method

.method protected loadMoreItems()V
    .locals 5

    .line 902
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 906
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 907
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 908
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 910
    :cond_1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 913
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 910
    invoke-static {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMoreSearchItems(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 916
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 917
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 918
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->doOnEvent(Lio/reactivex/rxjava3/functions/BiConsumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    new-instance v2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 919
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 p3, 0xa

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 339
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 341
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    iget-object p3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string p2, "ReCaptcha failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_1
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request code from activity not supported ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onAttach(Landroid/content/Context;)V

    .line 206
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1, v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->showLocalSearchSuggestions(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    .line 208
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1, v0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->showRemoteSearchSuggestions(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    .line 210
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 211
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 723
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 724
    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 725
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideSuggestionsPanel()V

    .line 727
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 728
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11

    .line 437
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 439
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 441
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 442
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 447
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 449
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    if-nez v2, :cond_1

    .line 450
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v3, "onCreateOptionsMenu() called with null service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->updateService()V

    .line 454
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getAvailableContentFilter()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v7, v2, v4

    .line 455
    const-string v8, "music_songs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    .line 456
    const-string v10, "YouTube Music"

    invoke-interface {p1, v9, v5, v0, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 460
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    move v5, v8

    goto :goto_2

    .line 461
    :cond_2
    const-string v8, "sepia_videos"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v8, v5, 0x1

    .line 462
    const-string v10, "Sepia Search"

    invoke-interface {p1, v9, v5, v0, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 466
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 468
    :cond_3
    :goto_2
    iget-object v8, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->menuItemToFilterName:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v8, v5, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v5, 0x1

    .line 472
    invoke-static {v7, p2}, Lorg/schabi/newpipe/util/ServiceHelper;->getTranslatedFilterString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 469
    invoke-interface {p1, v1, v5, v0, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v6, :cond_4

    .line 474
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v6, 0x0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    .line 478
    :cond_5
    invoke-interface {p1, v1, v1, v1}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 480
    iget p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->restoreFilterChecked(Landroid/view/Menu;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0064

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 326
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onDestroy()V

    .line 327
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 333
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 315
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->unsetSearchListeners()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    .line 321
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    return-void
.end method

.method protected onItemSelected(Lorg/schabi/newpipe/extractor/InfoItem;)V
    .locals 0

    .line 929
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onItemSelected(Lorg/schabi/newpipe/extractor/InfoItem;)V

    .line 930
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->menuItemToFilterName:Landroidx/collection/SparseArrayCompat;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 486
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->changeContentFilter(Landroid/view/MenuItem;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 257
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 259
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 261
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 267
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 268
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 273
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onResume()V

    .line 278
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->initSuggestionObserver()V

    .line 282
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 283
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 286
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 287
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->savedState:Lorg/schabi/newpipe/util/SavedState;

    if-nez v0, :cond_4

    .line 288
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    if-nez v0, :cond_5

    .line 291
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 292
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showEmptyState()V

    .line 297
    :cond_5
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->handleSearchSuggestion()V

    .line 299
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    iget-object v3, v2, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->searchMetaInfoTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->searchMetaInfoSeparator:Landroid/view/View;

    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {v0, v3, v2, v4}, Lorg/schabi/newpipe/util/ExtractorHelper;->showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 303
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    if-eqz v0, :cond_7

    goto :goto_1

    .line 307
    :cond_7
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 308
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideSuggestionsPanel()V

    goto :goto_2

    .line 304
    :cond_8
    :goto_1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showKeyboardSearch()V

    .line 305
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showSuggestionsPanel()V

    .line 310
    :goto_2
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 407
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 247
    sget-boolean v0, Lorg/schabi/newpipe/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onStart()V

    .line 252
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->updateService()V

    return-void
.end method

.method public onSuggestionItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1153
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 1154
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 1155
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->deleteSearchHistory(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 1156
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 1157
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 1162
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 222
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/FragmentSearchBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/FragmentSearchBinding;

    .line 223
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 225
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->updateService()V

    .line 228
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    if-eqz p1, :cond_0

    .line 229
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 231
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f1203d8

    .line 230
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showSearchOnStart()V

    .line 234
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->initSearchListeners()V

    return-void
.end method

.method public readFrom(Ljava/util/Queue;)V
    .locals 0

    .line 398
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->readFrom(Ljava/util/Queue;)V

    .line 399
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/Page;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    return-void
.end method

.method public reloadContent()V
    .locals 3

    .line 416
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isSearchEditBlank()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showKeyboardSearch()V

    .line 426
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideErrorPanel()V

    return-void

    .line 418
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 419
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    goto :goto_1

    .line 420
    :cond_3
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 418
    invoke-direct {p0, v0, v2, v1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startLoading(Z)V
    .locals 3

    .line 884
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->startLoading(Z)V

    .line 885
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 886
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p1, :cond_0

    .line 887
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 889
    :cond_0
    iget p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 891
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 889
    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->searchFor(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 893
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 894
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 895
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->doOnEvent(Lio/reactivex/rxjava3/functions/BiConsumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 896
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public writeTo(Ljava/util/Queue;)V
    .locals 1

    .line 392
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->writeTo(Ljava/util/Queue;)V

    .line 393
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
