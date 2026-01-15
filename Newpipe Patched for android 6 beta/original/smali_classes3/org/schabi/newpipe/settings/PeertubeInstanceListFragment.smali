.class public Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;
.super Landroidx/fragment/app/Fragment;
.source "PeertubeInstanceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;,
        Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;
    }
.end annotation


# instance fields
.field private binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

.field private savedInstanceListKey:Ljava/lang/String;

.field private selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$4arQhGPNL_tYbS7Rlvp2SoZqu7Y(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BeT9btp2GKGIUTS9FCdHrdoFCqc(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->lambda$addInstance$4(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LBUYo6qocJZgPi5oIBBE0V0fqgc(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->lambda$restoreDefaults$1(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQSgyaXRiD5XpD0Meexytw3Cce0(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->lambda$addInstance$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nwfupYIk7UMjz8aXrA1zzvzQclU(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->lambda$showAddItemDialog$2(Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufWFqvMcmupXiT9JNOrTtRc7suw(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;
    .locals 1

    .line 209
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->fetchInstanceMetaData()V

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetinstanceListAdapter(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedInstance(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mselectInstance(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private add(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V
    .locals 2

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private addInstance(Ljava/lang/String;)V
    .locals 2

    .line 203
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->cleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    new-instance v0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 212
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)V

    new-instance v1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)V

    .line 213
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private cleanUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 228
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "https://"

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    :cond_0
    const-string v0, "/$"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12034e

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-object v1

    .line 240
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 241
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12034b

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-object v1

    :cond_3
    return-object p1
.end method

.method private getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 3

    .line 257
    new-instance v0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;

    const/4 v1, 0x3

    const/16 v2, 0x30

    invoke-direct {v0, p0, v1, v2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$1;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;II)V

    return-object v0
.end method

.method private synthetic lambda$addInstance$4(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->add(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    return-void
.end method

.method private synthetic lambda$addInstance$5(Ljava/lang/Throwable;)V
    .locals 2

    .line 217
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12034c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->showAddItemDialog(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$restoreDefaults$1(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 177
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->savedInstanceListKey:Ljava/lang/String;

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    sget-object p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->DEFAULT_INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    .line 179
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {p1}, Lorg/schabi/newpipe/util/PeertubeHelper;->getInstanceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$showAddItemDialog$2(Lorg/schabi/newpipe/databinding/DialogEditTextBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 196
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->addInstance(Ljava/lang/String;)V

    return-void
.end method

.method private restoreDefaults()V
    .locals 4

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1203c1

    .line 173
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1203c2

    .line 174
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120070

    const/4 v3, 0x0

    .line 175
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Landroid/content/Context;)V

    const v0, 0x7f120332

    .line 176
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private saveChanges()V
    .locals 5

    .line 159
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "instances"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 160
    iget-object v1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 161
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    .line 162
    const-string v3, "name"

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 163
    const-string v3, "url"

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 164
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->savedInstanceListKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/PeertubeHelper;->selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/content/Context;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 155
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_main_page_change"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showAddItemDialog(Landroid/content/Context;)V
    .locals 3

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/DialogEditTextBinding;

    move-result-object v0

    .line 186
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 188
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->dialogEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const v2, 0x7f12034d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 190
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f12034f

    .line 191
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f08013a

    .line 192
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/DialogEditTextBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120070

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Lorg/schabi/newpipe/databinding/DialogEditTextBinding;)V

    const v0, 0x7f120332

    .line 195
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const p1, 0x7f120350

    .line 69
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->savedInstanceListKey:Ljava/lang/String;

    .line 70
    invoke-static {}, Lorg/schabi/newpipe/util/PeertubeHelper;->getCurrentInstance()Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 135
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0005

    .line 136
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 78
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    .line 79
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0241

    if-ne v0, v1, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->restoreDefaults()V

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 109
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 110
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->saveChanges()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 102
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120355

    .line 104
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/ThemeHelper;->setTitleToAppCompatActivity(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->instanceHelpTV:Lorg/schabi/newpipe/views/NewPipeTextView;

    const p2, 0x7f120351

    .line 88
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f120353

    .line 87
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->addInstanceButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->instances:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 92
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 93
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->instances:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 95
    new-instance p2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Landroid/content/Context;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 96
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentInstanceListBinding;->instances:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 97
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/PeertubeHelper;->getInstanceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
