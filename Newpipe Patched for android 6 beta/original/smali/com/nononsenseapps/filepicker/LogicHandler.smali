.class public interface abstract Lcom/nononsenseapps/filepicker/LogicHandler;
.super Ljava/lang/Object;
.source "LogicHandler.java"


# virtual methods
.method public abstract getFullPath(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getItemViewType(ILjava/lang/Object;)I
.end method

.method public abstract getLoader()Landroidx/loader/content/Loader;
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getParent(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getPath(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getRoot()Ljava/lang/Object;
.end method

.method public abstract isDir(Ljava/lang/Object;)Z
.end method

.method public abstract onBindHeaderViewHolder(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$HeaderViewHolder;)V
.end method

.method public abstract onBindViewHolder(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;ILjava/lang/Object;)V
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract toUri(Ljava/lang/Object;)Landroid/net/Uri;
.end method
