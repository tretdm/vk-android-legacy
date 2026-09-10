.class Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesSearchDialogs$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->searchOnServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x8

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$8(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/APIRequest;)V

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$10(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$11(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$3(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v2, 0x8

    .line 170
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$8(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/APIRequest;)V

    .line 171
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$0(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$0(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$9(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V

    .line 181
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$10(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$11(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v4}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$3(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-void

    .line 171
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 172
    .local v0, "u":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 173
    .local v1, "u2":Lcom/vkontakte/android/UserProfile;
    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v6, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, v6, :cond_2

    .line 174
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v0    # "u":Lcom/vkontakte/android/UserProfile;
    .end local v1    # "u2":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
