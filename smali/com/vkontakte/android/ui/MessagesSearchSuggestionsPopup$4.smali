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
    .line 166
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

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

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$802(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$1000(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$1200(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$1100(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    return-void

    .line 188
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
    const/16 v4, 0x8

    .line 169
    iget-object v5, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$802(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 170
    iget-object v5, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$200(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 171
    .local v2, "u":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 172
    .local v3, "u2":Lcom/vkontakte/android/UserProfile;
    iget v5, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, v6, :cond_1

    .line 173
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "u":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "u2":Lcom/vkontakte/android/UserProfile;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$200(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v5, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$900(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V

    .line 180
    iget-object v5, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$1000(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v5, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$1200(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v6}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$1100(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    return-void

    .line 181
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
