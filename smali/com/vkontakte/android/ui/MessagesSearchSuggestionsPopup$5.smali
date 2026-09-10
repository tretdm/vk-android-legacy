.class Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$9(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/APIRequest;)V

    .line 174
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 158
    .local p1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$9(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/APIRequest;)V

    .line 159
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$0(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$0(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$10(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V

    .line 169
    return-void

    .line 159
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 160
    .local v0, "u":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 161
    .local v1, "u2":Lcom/vkontakte/android/UserProfile;
    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, v5, :cond_2

    .line 162
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
