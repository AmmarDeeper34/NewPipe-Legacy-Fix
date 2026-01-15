.class public abstract Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FragmentStatePagerAdapterMenuWorkaround.java"


# instance fields
.field private final mBehavior:I

.field private mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private mExecutingFinishUpdate:Z

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mFragments:Ljava/util/ArrayList;

.field private final mSavedState:Ljava/util/ArrayList;

.field private final selectedFragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 2

    .line 130
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    .line 96
    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 279
    const-string v0, "selected_fragment"

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->selectedFragment:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 132
    iput p2, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mBehavior:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 200
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 202
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 209
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    .line 210
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p3}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 212
    :goto_1
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 217
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 218
    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_3
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 255
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_1

    .line 261
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mExecutingFinishUpdate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mExecutingFinishUpdate:Z

    .line 264
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mExecutingFinishUpdate:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mExecutingFinishUpdate:Z

    .line 267
    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    return-void
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 158
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 159
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 169
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 173
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 174
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$SavedState;

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 179
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 180
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 183
    iget v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mBehavior:I

    if-nez v2, :cond_4

    .line 184
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 187
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object p2, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 190
    iget p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mBehavior:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 191
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    :cond_5
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 275
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 313
    check-cast p1, Landroid/os/Bundle;

    .line 314
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 315
    const-string p2, "states"

    const-class v0, Landroidx/fragment/app/Fragment$SavedState;

    invoke-static {p1, p2, v0}, Landroidx/core/os/BundleCompat;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 317
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_0

    .line 320
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 323
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 326
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 328
    :goto_1
    iget-object v3, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v1, :cond_2

    .line 329
    iget-object v3, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 332
    :cond_2
    const-string v3, "selected_fragment"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 334
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 336
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad fragment at key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentStatePagerAdapt"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 5

    .line 286
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    const-string v1, "states"

    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 290
    :goto_1
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 291
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    .line 292
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    iget-object v4, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v0, v3, v2}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 301
    iget-object v4, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-ne v2, v4, :cond_2

    .line 302
    const-string v2, "selected_fragment"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 226
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 227
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 230
    iget p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mBehavior:I

    if-ne p1, p2, :cond_1

    .line 231
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 232
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 234
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 239
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 240
    iget p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mBehavior:I

    if-ne p1, p2, :cond_4

    .line 241
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez p1, :cond_3

    .line 242
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 244
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 246
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 249
    :goto_1
    iput-object p3, p0, Landroidx/fragment/app/FragmentStatePagerAdapterMenuWorkaround;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
