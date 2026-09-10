.class Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;-><init>(Lcom/actionbarsherlock/widget/SearchView;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 81
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$3(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ListView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 82
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$0(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$0(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 84
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$4(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 85
    new-instance v1, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 86
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iput-object v2, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 87
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$4(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/DialogEntry;)V

    .line 100
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :goto_0
    return-void

    .line 90
    .restart local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "id"

    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v3, "title"

    iget-object v4, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 93
    const-string v3, "photo"

    iget-object v4, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 94
    const-string v4, "ChatFragment"

    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$1(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v4, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 95
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$5(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/widget/SearchView;->setIconified(Z)V

    .line 96
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$5(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/widget/SearchView;->setIconified(Z)V

    goto :goto_0

    .line 98
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$5(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v4}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$5(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
