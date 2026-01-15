.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

.field public final synthetic f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->$r8$lambda$0vg8PirfttfZTyjKMs7HhhVzp08(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
