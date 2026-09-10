.class Lcom/vkontakte/android/PostViewActivity$13;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$13;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$13;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const-class v2, Lcom/vkontakte/android/UserListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    sget v2, Lcom/vkontakte/android/UserListActivity;->TYPE_LIKES:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v1, "ltype"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$13;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v1, "oid"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$13;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v1, "item_id"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$13;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$13;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$13;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method
