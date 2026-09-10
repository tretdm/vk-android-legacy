.class Lcom/vkontakte/android/DialogsActivity$17;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesSearchDialogs$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->updateCompletion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/DialogsActivity;->access$17(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 1312
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 8
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
    .line 1293
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/DialogsActivity;->access$17(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 1297
    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v5}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 1298
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1305
    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 1307
    return-void

    .line 1298
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 1299
    .local v2, "u":Lcom/vkontakte/android/UserProfile;
    const/4 v0, 0x0

    .line 1300
    .local v0, "contains":Z
    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v5}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1303
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$17;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v5}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1300
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 1301
    .local v3, "u2":Lcom/vkontakte/android/UserProfile;
    iget v6, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v7, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method
