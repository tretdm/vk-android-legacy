.class Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$1;
.super Ljava/lang/Object;
.source "ButtonsPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    invoke-static {v2}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->access$000(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getById(I)Lcom/vkontakte/android/api/Group;

    move-result-object v0

    .line 51
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "edit"

    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    invoke-static {v3}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->access$000(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    const-string v2, "public"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const-string v2, "group_title"

    iget-object v3, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v2, "group_photo"

    iget-object v3, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
