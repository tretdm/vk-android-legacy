.class Lcom/vkontakte/android/fragments/PostViewFragment$3;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    const v2, 0x7f08001f

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    .line 209
    .local v0, "item":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;
    const-string v1, "wall"

    .line 210
    .local v1, "type":Ljava/lang/String;
    iget v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 211
    const-string v1, "photo"

    .line 212
    :cond_0
    iget v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 213
    const-string v1, "video"

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vkontakte://vk.com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->origID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method
