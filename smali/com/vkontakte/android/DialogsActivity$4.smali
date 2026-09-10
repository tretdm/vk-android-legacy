.class Lcom/vkontakte/android/DialogsActivity$4;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$4;->this$0:Lcom/vkontakte/android/DialogsActivity;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
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
    .line 275
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$4;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 276
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$4;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const-class v3, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "peerID"

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_0

    .line 281
    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$4;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/DialogsActivity;->startActivity(Landroid/content/Intent;)V

    .line 286
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$4;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$4;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v2, v2, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v4, 0x7f060074

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/vkontakte/android/DialogsActivity;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method
