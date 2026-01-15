.class Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$1;
.super Ljava/lang/Object;
.source "ChooseTabsFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/settings/SelectPlaylistFragment$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$1;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalPlaylistSelected(JLjava/lang/String;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$1;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    invoke-direct {v1, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;-><init>(JLjava/lang/String;)V

    invoke-static {v0, v1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$maddTab(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Lorg/schabi/newpipe/settings/tabs/Tab;)V

    return-void
.end method

.method public onRemotePlaylistSelected(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$1;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    invoke-direct {v1, p1, p2, p3}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->-$$Nest$maddTab(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;Lorg/schabi/newpipe/settings/tabs/Tab;)V

    return-void
.end method
